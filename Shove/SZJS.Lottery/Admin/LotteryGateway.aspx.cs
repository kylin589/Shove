using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Shove.Database;

public partial class Admin_LotteryGateway : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindData();

            BindDataForLottery();

            btnOK.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.Options));
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.Options, Competences.QueryData);

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        SystemOptions so = new SystemOptions();
        tb1.Text = so["ElectronTicket_Getway"].ToString("");
        tb2.Text = so["ElectronTicket_Agent_UserNumber"].ToString("");
        tb3.Attributes.Add("value", so["ElectronTicket_Agent_Key"].ToString(""));
        tb4.Text = so["ElectronTicket_Agent_UserName"].ToString("");
        tb5.Attributes.Add("value", so["ElectronTicket_Agent_UserPassword"].ToString(""));
        tb6.Attributes.Add("value", so["ElectronTicket_Agent_PostPassword"].ToString(""));

        tbTC1.Text = so["ElectronTicketbase_TC_Getway"].ToString("");
        tbTC2.Text = so["ElectronTicketbase_TC_Agent_UserNumber"].ToString("");
        tbTC3.Attributes.Add("value", so["ElectronTicketbase_TC_Agent_Key"].ToString(""));

        tbFC1.Text = so["ElectronTicketbase_FC_Getway"].ToString("");
        tbFC2.Text = so["ElectronTicketbase_FC_Agent_UserNumber"].ToString("");
        tbFC3.Attributes.Add("value", so["ElectronTicketbase_FC_Agent_Key"].ToString(""));

        tbJC1.Text = so["ElectronTicketbase_JC_Getway"].ToString("");
        tbJC2.Text = so["ElectronTicketbase_JC_Agent_UserNumber"].ToString("");
        tbJC3.Attributes.Add("value", so["ElectronTicketbase_JC_Agent_Key"].ToString(""));

        /*****查询大赢家账户余额****/
        ElectronTicket ElectronTicket_BLL = new ElectronTicket();
        string wParamStr = "";
        string wMsgID = "SZJS20111013";
        string wSignStr = Shove._Security.Encrypt.MD5(tb2.Text + "108" + wMsgID + wParamStr + so["ElectronTicket_Agent_Key"].ToString("") + "", "gb2312");
        string ReceiveString = PF.Post(tb1.Text, "wAgent=" + tb2.Text + "&wAction=108&wMsgID=" + wMsgID + "&wSign=" + wSignStr + "&wParam=" + wParamStr + "", 100);
        string code = ElectronTicket_BLL.GetXMLCode(ReceiveString, "xCode");
        if (code == "0")
        {
            string xValue = ElectronTicket_BLL.GetXMLCode(ReceiveString, "xValue");
            UserBalance.InnerHtml = xValue;
        }
        /*****结束****/

        /*****查询中民卓彩体彩账户余额****/
        string TCtranscode = "103";
        string TCpartnerid = so["ElectronTicketbase_TC_Agent_UserNumber"].ToString("");
        string TCmsg = "<?xml version='1.0' encoding='utf-8'?><msg><head transcode='" + TCtranscode + "' partnerid='" + TCpartnerid + "' version='1.0' time='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' /><body><partneraccount partnerid='" + TCpartnerid + "' /></body></msg>";
        string TCkey = Shove._Security.Encrypt.MD5(TCmsg + so["ElectronTicketbase_TC_Agent_Key"].ToString(""), "UTF-8").ToUpper();
        string TCReceiveStr = PF.Post(so["ElectronTicketbase_TC_Getway"].ToString(""), TCmsg, TCkey);
        string TCcode = ElectronTicket_BLL.GetXMLValue(TCReceiveStr, "head", "transcode");
        if (TCcode == "703")
        {
            string xValue = ElectronTicket_BLL.GetXMLValue(TCReceiveStr, "partneraccount", "balance");
            TCUserBalance.InnerHtml = xValue;
        }
        /*****结束****/

        /*****查询中民卓福彩账户余额****/
        string FCtranscode = "104";
        string FCpartnerid = so["ElectronTicketbase_FC_Agent_UserNumber"].ToString("");
        string FCmsg = "<?xml version='1.0' encoding='utf-8'?><msg><head transcode='" + FCtranscode + "' partnerid='" + FCpartnerid + "' version='1.0' time='" + DateTime.Now.ToString("yyyymmddhhmmss") + "' /><body><partneraccount partnerid='" + FCpartnerid + "' /></body></msg>";
        string FCkey = Shove._Security.Encrypt.MD5(FCmsg + so["ElectronTicketbase_FC_Agent_Key"].ToString(""), "UTF-8");
        string FCReceiveStr = PF.Post(so["ElectronTicketbase_FC_Getway"].ToString(""), FCmsg, FCkey);
        string FCcode = ElectronTicket_BLL.GetXMLValue(FCReceiveStr, "head", "transcode");
        if (FCcode == "701")
        {
            string xValue = ElectronTicket_BLL.GetXMLValue(FCReceiveStr, "partneraccount", "balance");
            FCUserBalance.InnerHtml = xValue;
        }

        /*****结束****/

        /*****查询中民卓彩竞彩账户余额****/
        string JCtranscode = "103";
        string JCpartnerid = so["ElectronTicketbase_JC_Agent_UserNumber"].ToString("");
        string JCmsg = "<?xml version='1.0' encoding='utf-8'?><msg><head transcode='" + JCtranscode + "' partnerid='" + JCpartnerid + "' version='1.0' time='" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' /><body><partneraccount partnerid='" + JCpartnerid + "' /></body></msg>";
        string JCkey = Shove._Security.Encrypt.MD5(JCmsg + so["ElectronTicketbase_JC_Agent_Key"].ToString(""), "UTF-8").ToUpper();
        string JCReceiveStr = PF.Post(so["ElectronTicketbase_JC_Getway"].ToString(""), JCmsg, JCkey);
        string JCcode = ElectronTicket_BLL.GetXMLValue(JCReceiveStr, "head", "transcode");
        if (JCcode == "703")
        {
            string xValue = ElectronTicket_BLL.GetXMLValue(JCReceiveStr, "partneraccount", "balance");
            JCUserBalance.InnerHtml = xValue;
        }
        /*****结束****/
    }

    private void BindDataForLottery()
    {
        DataTable dt = new DAL.Tables.T_Lotteries().Open("[ID], [Name], PrintOutType", "[ID] in (" + (_Site.UseLotteryListRestrictions == "" ? "-1" : _Site.UseLotteryListRestrictions) + ")", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        g.DataSource = dt;
        g.DataBind();

        g.Columns[2].Visible = false;
        g.Columns[3].Visible = false;

        // 设置出票方式的下拉框
        for (int i = 0; i < g.Rows.Count; i++)
        {
            DropDownList ddlElectronTicket = (DropDownList)g.Rows[i].Cells[1].FindControl("ddlElectronTicket");

            int LotteryID = Shove._Convert.StrToInt(g.Rows[i].Cells[2].Text, -1);

            if (LotteryID < 1)
            {
                continue;
            }

            short PrintOutType = Shove._Convert.StrToShort(g.Rows[i].Cells[3].Text, 0);

            Shove.ControlExt.SetDownListBoxTextFromValue(ddlElectronTicket, PrintOutType.ToString());
        }
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        SystemOptions so = new SystemOptions();
        so["ElectronTicket_Getway"] = new OptionValue(tb1.Text);
        so["ElectronTicket_Agent_UserNumber"] = new OptionValue(tb2.Text);
        so["ElectronTicket_Agent_Key"] = new OptionValue(tb3.Text);
        so["ElectronTicket_Agent_UserName"] = new OptionValue(tb4.Text);
        so["ElectronTicket_Agent_UserPassword"] = new OptionValue(tb5.Text);
        so["ElectronTicket_Agent_PostPassword"] = new OptionValue(tb6.Text);

        so["ElectronTicketbase_TC_Getway"] = new OptionValue(tbTC1.Text);
        so["ElectronTicketbase_TC_Agent_UserNumber"] = new OptionValue(tbTC2.Text);
        so["ElectronTicketbase_TC_Agent_Key"] = new OptionValue(tbTC3.Text);

        so["ElectronTicketbase_FC_Getway"] = new OptionValue(tbFC1.Text);
        so["ElectronTicketbase_FC_Agent_UserNumber"] = new OptionValue(tbFC2.Text);
        so["ElectronTicketbase_FC_Agent_Key"] = new OptionValue(tbFC3.Text);

        so["ElectronTicketbase_JC_Getway"] = new OptionValue(tbJC1.Text);
        so["ElectronTicketbase_JC_Agent_UserNumber"] = new OptionValue(tbJC2.Text);
        so["ElectronTicketbase_JC_Agent_Key"] = new OptionValue(tbJC3.Text);

        for (int i = 0; i < g.Rows.Count; i++)
        {
            DropDownList ddlElectronTicket = (DropDownList)g.Rows[i].Cells[1].FindControl("ddlElectronTicket");

            MSSQL.ExecuteNonQuery("update T_Lotteries set PrintOutType = " + ddlElectronTicket.SelectedValue + " where [ID] = " + g.Rows[i].Cells[2].Text);
        }

        tb3.Attributes.Add("value", tb3.Text);

        Shove._Web.JavaScript.Alert(this.Page, "站点资料已经保存成功。");
    }
}
