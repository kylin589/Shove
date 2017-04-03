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
using System.Text;

public partial class Lottery_Index_BuyCQSSC : SitePageBase
{
    public int LotteryID;
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(Lottery_Index_BuyCQSSC), this.Page);
        LotteryID = 28;
        if (!IsPostBack)
        {
            if (_User != null)
            {
                hUserID.Value = _User.ID.ToString();
            }
            tdLuckNumber.InnerHtml = InitLuckLotteryNumber();
        }
    }
    /// <summary>
    /// 获取服务器时间
    /// </summary>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public string GetSysTime()
    {
        DateTime now = Shove._Convert.StrToDateTime(new DAL.Views.V_GetDate().Open("", "", "").Rows[0]["Now"].ToString(), DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
        return now.ToString("yyyy/MM/dd HH:mm:ss");
    }

    /// <summary>
    /// 获取期信息
    /// </summary>
    /// <param name="LotteryID"></param>
    /// <returns></returns>
    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.None)]
    public string GetIsuseInfo(int LotteryID)
    {
        try
        {
            Shove._Web.Cache.ClearCache(DataCache.IsusesInfo + LotteryID.ToString());
            DataTable dt = DataCache.GetIsusesInfo(LotteryID);
            string strNow = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            //本期期信息
            DataRow[] drCurrIsuse = dt.Select("'" + strNow + "' > StartTime and '" + strNow + "' < EndTime", "EndTime desc");
            //本期
            int IsuseID = Shove._Convert.StrToInt(drCurrIsuse[0]["ID"].ToString(), -1);
            string IsuseName = drCurrIsuse[0]["Name"].ToString();
            int SystemEndAheadMinute = DataCache.LotteryEndAheadMinute[LotteryID];
            DateTime EndTime = Convert.ToDateTime(drCurrIsuse[0]["EndTime"]);
            DateTime SystemEndTime = EndTime.AddMinutes(SystemEndAheadMinute * -1);
            string IsuseEndTime = SystemEndTime.ToString("yyyy/MM/dd HH:mm:ss");
            //END

            StringBuilder sb = new StringBuilder();

            sb.Append(IsuseID.ToString())
                .Append(",")
                .Append(IsuseName)
                .Append(",")
                .Append(IsuseEndTime)
                .Append("|");

            return sb.ToString();
        }
        catch (Exception e)
        {
            new Log("TWZT").Write(this.GetType() + e.Message);
            return "";
        }
    }
    private string InitLuckLotteryNumber()
    {
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i < 6; i++)
        {
            sb.AppendLine("<input maxlength=\"2\" class=\"redball\"  id='tdLuckNumber" + i.ToString() + "' value=\"" + i.ToString() + "\" onchange=\"LotteryNum(tdLuckNumber" + i.ToString() + ");\">");
        }
        return sb.ToString();
    }

    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.Read)]
    public string GenerateLuckLotteryNumber(int LotteryID)
    {
        string LotteryNumber = "";
        LotteryNumber = new SZJS.Lottery()[LotteryID].BuildNumber(1, 5);
        return FormatLuckLotteryNumber(LotteryID, LotteryNumber) + " |" + FormatLuckLotteryNumber(LotteryID, LotteryNumber);
    }
    private string FormatLuckLotteryNumber(int LotteryID, string LotteryNumber)
    {
        string NewLotteryNumber = "";
        for (int i = 0; i < LotteryNumber.Length; i++)
        {
            NewLotteryNumber += " " + LotteryNumber[i].ToString();
        }
        return NewLotteryNumber;
    }
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        if (!PF.IsSystemRegister())
        {
            PF.GoError(ErrorNumber.DataReadWrite, "请联系网站管理员输入软件序列号", this.GetType().BaseType.FullName);
            return;
        }
        Buy(_User);
    }
    /// <summary>
    /// 购买彩票
    /// </summary>
    /// <param name="_User"></param>
    private void Buy(Users _User)
    {
        string HidIsuseEndTime = this.HidIsuseEndTime.Value;
        string tb_Share = this.tb_Share.Value;
        string tb_BuyShare = this.tb_BuyShare.Value;
        string tb_Title = "";
        string tb_Description = "";
        string tb_OpenUserList = "";
        int Price = 2;
        double SumMoney = double.Parse(this.tb_Share.Value) * 2;
        int Share = int.Parse(tb_Share);
        int BuyShare = int.Parse(tb_BuyShare);
        double AssureMoney = 0;
        int Multiple = int.Parse(this.Multiple.Value);
        int SumNum = int.Parse(tb_Share);
        int PlayTypeID = 2801;
        int LotteryID = 28;
        long IsuseID = int.Parse(this.HidIsuseID.Value);
        double SchemeBonusScale = double.Parse(new DAL.Tables.T_Sites().Open("Opt_InitiateSchemeBonusScale", "ID=1", "").Rows[0]["Opt_InitiateSchemeBonusScale"].ToString());


        if ((SumMoney <= 0) || (SumNum < 1))
        {
            Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");

            return;
        }

        if (AssureMoney < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");

            return;
        }

        if (Share < 1)
        {
            Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");

            return;
        }

        if ((BuyShare == Share) && (AssureMoney == 0))
        {
            Share = 1;
            BuyShare = 1;
        }

        if ((SumMoney / Share) < 1)
        {
            Shove._Web.JavaScript.Alert(this.Page, "每份金额最低不能少于 1 元。");

            return;
        }

        double BuyMoney = BuyShare * (SumMoney / Share) + AssureMoney;

        if (BuyMoney > PF.SchemeMaxBettingMoney)
        {
            Shove._Web.JavaScript.Alert(this.Page, "投注金额不能大于" + PF.SchemeMaxBettingMoney.ToString() + "，谢谢。");

            return;
        }

        if (Multiple > 99)
        {
            Shove._Web.JavaScript.Alert(this.Page, "投注倍数不能大于 99 倍，谢谢。");

            return;
        }

        string LotteryNumber = tb_LotteryNumber.Value.Replace(" ","") + "\r"; 

        if (LotteryNumber[LotteryNumber.Length - 1] == '\n')
        {
            LotteryNumber = LotteryNumber.Substring(0, LotteryNumber.Length - 1);
        }

        #region 对彩票号码进行分析，判断注数

        SZJS.Lottery slsLottery = new SZJS.Lottery();
        string[] t_lotterys = SplitLotteryNumber(LotteryNumber);

        if ((t_lotterys == null) || (t_lotterys.Length < 1))
        {
            Shove._Web.JavaScript.Alert(this.Page, "选号发生异常，请重新选择号码投注，谢谢。(-694)");

            return;
        }

        int ValidNum = 0;

        foreach (string str in t_lotterys)
        {
            string Number = slsLottery[LotteryID].AnalyseScheme(str, PlayTypeID);

            if (string.IsNullOrEmpty(Number))
            {
                continue;
            }

            string[] str_s = Number.Split('|');

            if (str_s == null || str_s.Length < 1)
            {
                continue;
            }

            ValidNum += Shove._Convert.StrToInt(str_s[str_s.Length - 1], 0);
        }

        if (ValidNum != SumNum)
        {
            Shove._Web.JavaScript.Alert(this.Page, "选号发生异常，请重新选择号码投注，谢谢。");

            return;
        }

        #endregion

        string ReturnDescription = "";

        if (DateTime.Now >= Shove._Convert.StrToDateTime(HidIsuseEndTime.Replace("/", "-"), DateTime.Now.AddDays(-1).ToString()))
        {
            Shove._Web.JavaScript.Alert(this.Page, "本期投注已截止，谢谢。");

            return;
        }

        if (Price * SumNum * Multiple != SumMoney)
        {
            Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");

            return;
        }

        long SchemeID = _User.InitiateScheme(IsuseID, PlayTypeID, tb_Title.Trim() == "" ? "(无标题)" : tb_Title.Trim(), tb_Description.Trim(), LotteryNumber, "", Multiple, SumMoney, AssureMoney, Share, BuyShare, tb_OpenUserList, short.Parse("0"), SchemeBonusScale, ref ReturnDescription);
        if (SchemeID < 0)
        {
            PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.GetType().FullName + "(-755)");

            return;
        }

        Shove._Web.Cache.ClearCache("Home_Room_CoBuy_BindDataForType" + IsuseID.ToString());
        Shove._Web.Cache.ClearCache("Home_Room_SchemeAll_BindData" + IsuseID.ToString());
        Response.Write(" <script> this.parent.location= '../../Home/Room/UserBuySuccess.aspx?LotteryID=" + LotteryID.ToString() + "&Money=" + BuyMoney.ToString() + "&SchemeID=" + SchemeID.ToString() + " ';self.close(); </script> ");
        return;

    }
    private string[] SplitLotteryNumber(string Number)
    {
        string[] s = Number.Split('\n');
        if (s.Length == 0)
            return null;
        for (int i = 0; i < s.Length; i++)
            s[i] = s[i].Trim();
        return s;
    }
}
