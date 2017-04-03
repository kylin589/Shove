using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Home_Room_UserBuySuccess : SitePageBase
{
    public string URL = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbName.Text = _User.Name;
            lbName1.Text = _User.Name;
            lbBalance.Text = _User.Balance.ToString("N");

            string Type = Shove._Web.Utility.GetRequest("Type");
            string LotteryID = Shove._Web.Utility.GetRequest("LotteryID");
            string SchemeID = Shove._Web.Utility.GetRequest("SchemeID");
            string Money = Shove._Web.Utility.GetRequest("Money");

            SystemOptions so = new SystemOptions();
            lbScore.Text = (Shove._Convert.StrToDouble(_Site.SiteOptions["Opt_ScoringOfSelfBuy"].ToString("1"), 1) * Shove._Convert.StrToDouble(Money, 0)).ToString("N");

            if (Type == "2")
            {
                lbType.Text = "追号";
                lbType1.Text = "[继续追号]";
                Look.Visible = false;
            }
            if (Type == "3")
            {
                lbType.Text = "入伙";
                lbType1.Text = "[继续入伙]";
            }

            if (Type == "3")
            {
                Buy.HRef = "Scheme.aspx?id=" + SchemeID;
            }
            else
            {
                if (LotteryID == "29")
                {
                    Buy.HRef = "../../Lottery/BuySSL.aspx";
                }
                else if (LotteryID == "61")
                {
                    Buy.HRef = "../../Lottery/BuySSC.aspx";
                }
                else if (LotteryID == "62")
                {
                    Buy.HRef = "../../Lottery/BuySYYDJ.aspx";
                }
                else if (LotteryID == "28")
                {
                    Buy.HRef = "../../Lottery/BuyCQSSC.aspx";
                }
                else if (LotteryID == "65")
                {
                    Buy.HRef = "../../Lottery/Buy31X7.aspx";
                }
                else if (LotteryID == "59")
                {
                    Buy.HRef = "../../Lottery/Buy15X5.aspx";
                }
                else if (LotteryID == "9")
                {
                    Buy.HRef = "../../Lottery/Buy22X5.aspx";
                }
                else if (LotteryID == "6")
                {
                    Buy.HRef = "../../Lottery/Buy3D.aspx";
                }
                else if (LotteryID == "39")
                {
                    Buy.HRef = "../../Lottery/BuyCJDLT.aspx";
                }
                else if (LotteryID == "58")
                {
                    Buy.HRef = "../../Lottery/BuyDF6J1.aspx";
                }
                else if (LotteryID == "2")
                {
                    Buy.HRef = "../../Lottery/BuyJQC.aspx";
                }
                else if (LotteryID == "15")
                {
                    Buy.HRef = "../../Lottery/BuyLCBQC.aspx";
                }
                else if (LotteryID == "63")
                {
                    Buy.HRef = "../../Lottery/BuyPL3.aspx";
                }
                else if (LotteryID == "64")
                {
                    Buy.HRef = "../../Lottery/BuyPL5.aspx";
                }
                else if (LotteryID == "13")
                {
                    Buy.HRef = "../../Lottery/BuyQLC.aspx";
                }
                else if (LotteryID == "3")
                {
                    Buy.HRef = "../../Lottery/BuyQXC.aspx";
                }
                else if (LotteryID == "1")
                {
                    Buy.HRef = "../../Lottery/BuySFC.aspx";
                }
                else if (LotteryID == "5")
                {
                    Buy.HRef = "../../Lottery/BuySSQ.aspx";
                }
                else if (LotteryID == "70")
                {
                    Buy.HRef = "../../Lottery/BuyJX11X5.aspx";
                }
                else if (LotteryID == "74")
                {
                    Buy.HRef = "../../Lottery/BuySFC.aspx";
                }
                else if (LotteryID == "75")
                {
                    Buy.HRef = "../../Lottery/BuySFC_9_D.aspx";
                }

                if (Type != "2")
                {
                    DataTable dt = new DAL.Tables.T_Schemes().Open("PlayTypeID", "id=" + SchemeID, "");

                    if (dt == null)
                    {
                        new Log("System").Write("数据库读取错误,错误页面: Home_Room_UserBuySuccess");

                        return;
                    }

                    if (dt.Rows.Count != 1)
                    {
                        new Log("System").Write("参数错误, 错误页面: Home_Room_UserBuySuccess");

                        return;
                    }
                }
            }

            Look.HRef = "Scheme.aspx?id=" + SchemeID;
            URL = Buy.HRef;
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnInit(e);
    }

    #endregion
}
