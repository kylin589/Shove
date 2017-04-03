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

using Shove.Database;

 
public partial class Index : SitePageBase
{
    public string FocusNews = "";
    public int LotteryID;
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(Index), this.Page);
        LotteryID = 5;
        if (!IsPostBack)
        {
            int Logout = Shove._Convert.StrToInt(this.Request.QueryString["Logout"], -1);
            if (Logout != -1)
            {
                imgbtnLogout_Click(this.Page, new EventArgs());
            }

            BindDataForFlash();
            GetFCExpertList();
            BindWinList();
            BinddTEndIsuses();
            BindDataGetFuCaiWinNumber();
            BindDataGetTiCaiWinNumber();
            BindDataGetZuCaiWinNumber();
            GetFocusNews();
            GetSiteAffiches();

            RepFuCai.DataSource = GetNews("福彩资讯");
            RepFuCai.DataBind();
            RepTiCai.DataSource = GetNews("体彩资讯");
            RepTiCai.DataBind();

            JoinBuyData();
            BigJoinBuyData();
            FootBallJoinBuyData();
            tdLuckNumber.InnerHtml = InitLuckLotteryNumber();

            bool Opt_isUseCheckCode = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);
            if (Opt_isUseCheckCode)
            {
                System.Web.UI.HtmlControls.HtmlTableRow textCheckCodeHidden = tbLogin1.FindControl("textCheckCodeHidden") as System.Web.UI.HtmlControls.HtmlTableRow;
                textCheckCodeHidden.Visible = true;
            }
            else
            {
                textCheckCodeHidden.Visible = false;
            }
            if (_User != null)
            {
                tbLogin1.Visible = false;
                tbLogin2.Visible = true;
                lbUserName.Text = _User.Name + ",您好!";
                if (_User.Competences.CompetencesList != "")
                {
                    lbUserType.Text = "级别:管理员";
                }
                else
                {
                    switch (_User.UserType)
                    {
                        case 1:
                            lbUserType.Text = "级别:普通";
                            break;

                        case 2:
                            lbUserType.Text = "级别:高级";
                            break;
                    }
                }
                string UseLotteriesList = DAL.Functions.F_GetExpertsLotteryList(_Site.ID, _User.ID);
                if (UseLotteriesList != "")
                {
                    lbUserType.Text += "(专家)";
                }
            }
            else
            {
                tbLogin1.Visible = true;
                tbLogin2.Visible = false;
            }
        }
    }

    /// <summary>
    /// 用户登录
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string ReturnDescription = "";
        int Result = -1;
        if (txtUersName.Value.Trim() == "" || textUersPwd.Value.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入用户或密码！");
            return;
        }
        bool Opt_isUseCheckCode = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);
        if (Opt_isUseCheckCode)
        {
            if (textCheckCode.Value.Trim() != Session["CheckCode"].ToString())
            {
                Shove._Web.JavaScript.Alert(this.Page, "验证码输入错误");
                return;
            }
        }
        Result = new Login().LoginSubmit(this.Page, _Site, txtUersName.Value.Trim(), textUersPwd.Value.Trim(), ref ReturnDescription);
        if (Result < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);
            return;
        }
        new Login().GoToRequestLoginPage("~/Index.aspx");

    }

    /// <summary>
    /// 绑定首页Banner图片数据
    /// </summary>
    private void BindDataForFlash()
    {
        string Pics = "";
        string Titles = "";
        string Links = "";
        string CacheKey = "Home_Room_UserControls_Index_banner_ImagePlay";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        if (dt == null)
        {
            dt = new DAL.Tables.T_FocusImageNews().Open("", "", "ID Desc");
            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }
        DataRow[] drs = dt.Select("IsBig=1", "ID desc");
        if (dt != null && dt.Rows.Count > 0)
        {
            foreach (DataRow dr in dt.Rows)
            {
                Pics += "Private/" + _Site.ID.ToString() + "/NewsImages/" + dr["ImageUrl"].ToString() + "|";
                Titles += Shove._String.HtmlTextCut(dr["Title"].ToString(), 15) + "|";
                Links += dr["Url"].ToString() + "|";
            }
            Pics = Pics.Substring(0, Pics.Length - 1);
            Titles = Titles.Substring(0, Titles.Length - 1);
            Links = Links.Substring(0, Links.Length - 1);
            ImagePlayer.Pics = Pics;
            ImagePlayer.Titles = Titles;
            ImagePlayer.Links = Links;
        }
        else
        {
            ImagePlayer.Pics = "Images/DefaultNew.jpg";
            ImagePlayer.Titles = _Site.Name + "上线了";
            ImagePlayer.Links = "http://" + _Site.Url;
        }
    }
    /// <summary>
    /// 用户安全退出
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void imgbtnLogout_Click(object sender, EventArgs e)
    {
        string ReturnDescription = "";

        if (_User != null)
        {
            if (_User.Logout(ref ReturnDescription) < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.GetType().FullName);
                return;
            }
        }
        string DefaultURL = ResolveUrl("~/Index.aspx");
        Response.Write("<script language=\"javascript\">try{window.location.href = '" + DefaultURL + "';document.getElementById('hUserID').value='-1';}catch(e){window.location.href = '" + DefaultURL + "';}</script>");
    }

    /// <summary>
    /// 绑定专家列表
    /// </summary>
    public void GetFCExpertList()
    {
        string Key = "FCExpert";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);

        if (dt == null || dt.Rows.Count == 0)
        {
            dt = new DAL.Views.V_Experts().Open("top 10 UserName,UserID,LotteryName,LotteryID", "[ON]=1 and [isCanIssued]=1", "");

            if (dt != null)
            {
                dt.Columns.Add("ID", typeof(int));

                int i = 1;

                foreach (DataRow dr in dt.Rows)
                {
                    dr["ID"] = i;

                    i++;
                }
                Shove._Web.Cache.SetCache(Key, dt, 60);
            }
        }
        dTFCExpert.DataSource = dt;
        dTFCExpert.DataBind();
    }

    /// <summary>
    /// 绑定中奖排行版
    /// </summary>
    public void BindWinList()
    {
        string Key = "Default_GetUserListByWinMoney";

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);

        if (dt == null)
        {
            string strCmd = @"select b.InitiateUserID, c.Name as InitiateName, Win, 5 as LotteryID from(
                                select top 9 * from (
	                                select InitiateUserID, SUM(WinMoney) as Win from (
		                                select InitiateUserID, WinMoney from dbo.T_Schemes WITH (nolock) where WinMoney > 0 
	                                ) as a group by a.InitiateUserID 
                                ) as d order by d.Win desc
                            )as b inner join T_Users c WITH (nolock) on b.InitiateUserID = c.ID order by Win desc";

            dt = MSSQL.Select(strCmd);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

                return;
            }

            if (dt.Rows.Count > 0)
            {
                Shove._Web.Cache.SetCache(Key, dt, 600);
            }
        }
        dTWinList.DataSource = dt;
        dTWinList.DataBind();
    }

    /// <summary>
    /// 绑定截止期号
    /// </summary>
    public void BinddTEndIsuses()
    {
        string Key = "Default_EndIsuses";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);
        if (dt == null)
        {
            string strCmd = "select top 9 b.Name as LotteryName, a.Name,a.EndTime from T_Isuses as a left join T_Lotteries as b on a.LotteryID=b.ID where b.ID in (" + DAL.Functions.F_GetUsedLotteryList(_Site.ID).ToString() + ") and b.ID not in(62,29,61,70,28) order by a.EndTime";
            dt = MSSQL.Select(strCmd);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
            if (dt.Rows.Count > 0)
            {
                Shove._Web.Cache.SetCache(Key, dt, 600);
            }
        }
        dTEndIsuses.DataSource = dt;
        dTEndIsuses.DataBind();

    }

    /// <summary>
    /// 绑定全国福彩最新开奖情况
    /// </summary>
    private void BindDataGetFuCaiWinNumber()
    {
        string key = "Default_FuCaiOpenInfo";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);
        string sql = @"select top 6 b.Name as LotteryName,a.Name,a.WinLotteryNumber from T_Isuses as a left join T_Lotteries as b on a.LotteryID=b.ID where a.id in(select max(ID) from T_Isuses where LotteryId in (59,58,13,6,5)  and isopened=1 and ISNULL(WinLotteryNumber, '')<>'' group by LotteryId) order by EndTime desc";
        if (dt == null)
        {
            dt = MSSQL.Select(sql);
            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }
        RepWinFuCai.DataSource = dt;
        RepWinFuCai.DataBind();
        Shove._Web.Cache.SetCache(key, dt, 600);
    }

    /// <summary>
    /// 绑定全国体彩最新开奖情况
    /// </summary>
    private void BindDataGetTiCaiWinNumber()
    {
        string key = "Default_TiCaiOpenInfo";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);
        string sql = @"select top 6 b.Name as LotteryName,a.Name,a.WinLotteryNumber from T_Isuses as a left join T_Lotteries as b on a.LotteryID=b.ID where a.id in(select max(ID) from T_Isuses where LotteryId in (63,64,65,39,9,3)  and isopened=1 and ISNULL(WinLotteryNumber, '')<>'' group by LotteryId) order by EndTime desc";
        if (dt == null)
        {
            dt = MSSQL.Select(sql);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }
        RepWinTiCai.DataSource = dt;
        RepWinTiCai.DataBind();
        Shove._Web.Cache.SetCache(key, dt, 600);
    }

    /// <summary>
    /// 绑定全国足彩最新开奖情况
    /// </summary>
    private void BindDataGetZuCaiWinNumber()
    {
        string key = "Default_ZuCaiOpenInfo";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);
        string sql = @"select top 6 b.Name as LotteryName,a.Name,a.WinLotteryNumber from T_Isuses as a left join T_Lotteries as b on a.LotteryID=b.ID where a.id in(select max(ID) from T_Isuses where LotteryId in (1,2,15,74,75)  and isopened=1 and ISNULL(WinLotteryNumber, '')<>'' group by LotteryId) order by EndTime desc";
        if (dt == null)
        {
            dt = MSSQL.Select(sql);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }
        RepWinZuCai.DataSource = dt;
        RepWinZuCai.DataBind();
        Shove._Web.Cache.SetCache(key, dt, 600);
    }

    /// <summary>
    /// 绑定站点新闻
    /// </summary>
    public void GetFocusNews()
    {
        string key = "Default_GetFocusNewsIndex";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);
        if (dt == null)
        {
            dt = new DAL.Tables.T_FocusNews().Open("top 12 *", "", "");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }
        DataRow[] drs = dt.Select("IsMaster=1", "Order ASC");
        if (drs.Length > 0)
        {
            FocusNews = "<a href=\"" + drs[0]["Url"].ToString() + "\" target=\"_blank\" title=\"" + drs[0]["Title"].ToString() + "\">" + Shove._String.Cut(drs[0]["Title"].ToString(), 30) + "</a>";
        }
        Shove._Web.Cache.SetCache(key, dt, 600);

        RepFocusNews.DataSource = dt;
        RepFocusNews.DataBind();
    }

    /// <summary>
    /// 绑定站点公告
    /// </summary>
    private void GetSiteAffiches()
    {
        string CacheKey = "SiteAffichesIndex";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        if (dt == null)
        {
            dt = new DAL.Tables.T_SiteAffiches().Open("top 3 *", "SiteID = " + _Site.ID.ToString(), "[DateTime] desc");
            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }
        RepSiteAffiches.DataSource = dt;
        RepSiteAffiches.DataBind();
        Shove._Web.Cache.SetCache(CacheKey, dt, 600);

    }

    /// <summary>
    /// 获取彩票新闻
    /// </summary>
    /// <returns></returns>
    private DataTable GetNews(string TypeName)
    {
        string sql = @"select top 5 ID,Title,Content,TypeName from V_News where isShow = 1  and [TypeName] = '" + TypeName + "'order by isCommend,ID desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }

    /// <summary>
    /// 普通合买方案
    /// </summary>
    private void JoinBuyData()
    {
        string CacheKey = "Home_Room_JoinAllBuy_BindData";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        string strCmd = @"select top 10 LotteryName, InitiateName,Level,Money,Schedule,Title,case Schedule when 100 then 1 else 0 end as IsFull,LotteryID, ID, QuashStatus,(Share-BuyedShare) as ResShare,AssureMoney,Money/Share as ShareMoney,IsuseID,EndTime,AtTopStatus,PlayTypeID 
                       from V_Schemes with (nolock) where IsuseID in 
                        (select id from T_Isuses where  getdate() between StartTime and EndTime) 
                        and Share > 1 and money < 100 and LotteryID in (" + DAL.Functions.F_GetUsedLotteryList(_Site.ID) + ") order by QuashStatus asc,IsFull asc,Schedule desc,[Money] desc";
        if (dt == null || dt.Rows.Count < 1)
        {
            dt = MSSQL.Select(strCmd);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().FullName);

                return;
            }
            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }
        RepJoinBuy.DataSource = dt;
        RepJoinBuy.DataBind();
    }
    /// <summary>
    /// 大额合买方案
    /// </summary>
    private void BigJoinBuyData()
    {
        string CacheKey = "Home_Room_BigJoinAllBuy_BindData";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        string strCmd = @"select top 10 LotteryName, InitiateName,Level,Money,Schedule,Title,case Schedule when 100 then 1 else 0 end as IsFull,LotteryID, ID, QuashStatus,(Share-BuyedShare) as ResShare,AssureMoney,Money/Share as ShareMoney,IsuseID,EndTime,AtTopStatus,PlayTypeID 
                       from V_Schemes with (nolock) where IsuseID in 
                        (select id from T_Isuses where  getdate() between StartTime and EndTime) 
                        and Share > 20 and LotteryID in (" + DAL.Functions.F_GetUsedLotteryList(_Site.ID) + ") order by QuashStatus asc,IsFull asc,Schedule desc,[Money] desc";
        if (dt == null || dt.Rows.Count < 1)
        {
            dt = MSSQL.Select(strCmd);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().FullName);

                return;
            }
            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }
        RepBigJoinBuy.DataSource = dt;
        RepBigJoinBuy.DataBind();
    }
    /// <summary>
    /// 足彩合买方案
    /// </summary>
    private void FootBallJoinBuyData()
    {
        string CacheKey = "Home_Room_FootBallJoinAllBuy_BindData";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        string strCmd = @"select top 10 LotteryName, InitiateName,Level,Money,Schedule,Title,case Schedule when 100 then 1 else 0 end as IsFull,LotteryID, ID, QuashStatus,(Share-BuyedShare) as ResShare,AssureMoney,Money/Share as ShareMoney,IsuseID,EndTime,AtTopStatus,PlayTypeID 
                       from V_Schemes with (nolock) where IsuseID in 
                        (select id from T_Isuses where  getdate() between StartTime and EndTime) 
                        and Share > 1 and money < 100 and LotteryID in(1,2,15,74,75) and LotteryID in (" + DAL.Functions.F_GetUsedLotteryList(_Site.ID) + ") order by QuashStatus asc,IsFull asc,Schedule desc,[Money] desc";
        if (dt == null || dt.Rows.Count < 1)
        {
            dt = MSSQL.Select(strCmd);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().FullName);

                return;
            }
            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }
        RepFootBallJoinBuy.DataSource = dt;
        RepFootBallJoinBuy.DataBind();
    }

    private string InitLuckLotteryNumber()
    {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++)
        {
            sb.AppendLine("<input maxlength=\"2\" class=\"redball\"  id='tdLuckNumber" + i.ToString() + "' value=\"0" + (i + 1) + "\" onchange=\"LotteryNum(tdLuckNumber" + i.ToString() + ");\">");
        }
        sb.AppendLine("<input maxlength=\"2\" id='tdLuckNumber6' value=\"07\" style=\"background-image: url('Images/lan_bg.jpg'); background-repeat: no-repeat;\" onchange=\"LotteryNum6();\">");
        return sb.ToString();
    }

    [AjaxPro.AjaxMethod(AjaxPro.HttpSessionStateRequirement.Read)]
    public string GenerateLuckLotteryNumber(int LotteryID)
    {
        string LotteryNumber = "";
        LotteryNumber = new SZJS.Lottery()[LotteryID].BuildNumber(6, 1, 1);
        return LotteryNumber + "|" + FormatLuckLotteryNumber(LotteryID, LotteryNumber);
    }

    private string FormatLuckLotteryNumber(int LotteryID, string LotteryNumber)
    {
        if (string.IsNullOrEmpty(LotteryNumber))
        {
            return "";
        }
        LotteryNumber = LotteryNumber.Replace(" + ", " ");
        return LotteryNumber;
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
        string HidIsuseID = this.HidIsuseID.Value;
        string HidIsuseEndTime = this.HidIsuseEndTime.Value;
        string playType = "501";
        string tb_Share = "1";
        string tb_BuyShare = "1";
        string tb_hide_SumMoney = "2";
        string tb_Title = "";
        string tb_Description = "";
        string tb_Multiple = "1";
        string tb_OpenUserList = "";
        int Price = 2;
        double SumMoney = 0;
        int Share = 0;
        int BuyShare = 0;
        double AssureMoney = 0;
        int Multiple = 0;
        int SumNum = 1;
        short SecrecyLevel = 0;
        int PlayTypeID = 0;
        int LotteryID = 5;
        long IsuseID = 0;
        double SchemeBonusScale = double.Parse(new DAL.Tables.T_Sites().Open("Opt_InitiateSchemeBonusScale", "ID=1", "").Rows[0]["Opt_InitiateSchemeBonusScale"].ToString());

        try
        {
            SumMoney = double.Parse(tb_hide_SumMoney);
            Share = int.Parse(tb_Share);
            BuyShare = int.Parse(tb_BuyShare);
            Multiple = int.Parse(tb_Multiple);
            PlayTypeID = int.Parse(playType);
            IsuseID = long.Parse(HidIsuseID);
        }
        catch
        {
            Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");

            return;
        }

        string LotteryNumber = tb_LotteryNumber.Value + "\r";

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
        //解析的号码和选择的号码要一致
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

        long SchemeID = _User.InitiateScheme(IsuseID, PlayTypeID, tb_Title.Trim() == "" ? "(无标题)" : tb_Title.Trim(), tb_Description.Trim(), LotteryNumber, "", Multiple, SumMoney, AssureMoney, Share, BuyShare, tb_OpenUserList, short.Parse(SecrecyLevel.ToString()), SchemeBonusScale, ref ReturnDescription);
        if (SchemeID < 0)
        {
            PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.GetType().FullName + "(-755)");

            return;
        }

        Shove._Web.Cache.ClearCache("Home_Room_CoBuy_BindDataForType" + IsuseID.ToString());
        Shove._Web.Cache.ClearCache("Home_Room_SchemeAll_BindData" + IsuseID.ToString());

        if (SumMoney > 50 && Share > 1)
        {
            Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindData");
        }

        Response.Redirect("Home/Room/UserBuySuccess.aspx?LotteryID=" + LotteryID.ToString() + "&&Money=2&SchemeID=" + SchemeID.ToString() + "");

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

    protected void RepJoinBuy_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (_User != null)
        {
            if (e.CommandName == "Buy")
            {

                if (string.IsNullOrEmpty(_User.IDCardNumber) || string.IsNullOrEmpty(_User.RealityName))
                {
                    Shove._Web.JavaScript.Alert(this.Page, "对不起，您的身份证号码或者真实姓名没有填写，为了不影响您的领奖，请先完善这些资料。谢谢", "Home/Room/UserEdit.aspx");
                    return;
                }


                TextBox tbShare = e.Item.FindControl("tbShare") as TextBox;
                int share = Shove._Convert.StrToInt(tbShare.Text, 0);

                double ShareMoney = 0;

                try
                {
                    ShareMoney = Shove._Convert.StrToDouble((e.Item.FindControl("ShareMoney") as Label).Text, 0);
                }
                catch
                {
                    Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");
                    return;
                }

                if (ShareMoney <= 0 || share < 1)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "请输入认购份数。");

                    return;
                }

                if (Shove._Convert.StrToInt((e.Item.FindControl("ResShare") as HiddenField).Value, 0) < share)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "认购份数不能超过剩余份数" + "(" + (e.Item.FindControl("ResShare") as HiddenField).Value + "份)");

                    tbShare.Text = "1";

                    return;
                }

                DateTime EndTime = Shove._Convert.StrToDateTime((e.Item.FindControl("EndTime") as HiddenField).Value, DateTime.Now.AddMonths(-1).ToString());

                if (DateTime.Now > EndTime)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "投注时间已经截止，不能认购。");

                    return;
                }

                if ((ShareMoney * share) > _User.Balance)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "您的账户余额不足，请先充值，谢谢。", "Home/Room/OnlinePay/Default.aspx");
                    return;
                }

                string ReturnDescription = "";

                if (_User.JoinScheme(Shove._Convert.StrToLong((e.Item.FindControl("SchememId") as HiddenField).Value, 0), share, ref ReturnDescription) < 0)
                {
                    Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                    return;
                }
                else
                {
                    Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindData");
                    Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindLastestUsers");
                    Shove._Web.Cache.ClearCache("Home_Room_CoBuy_BindDataForType" + (e.Item.FindControl("IsuseID") as HiddenField).Value);
                    Shove._Web.Cache.ClearCache("Home_Room_SchemeAll_BindData" + (e.Item.FindControl("IsuseID") as HiddenField).Value);

                    Shove._Web.JavaScript.Alert(this.Page, "认购成功！", "Index.aspx");

                    return;
                }
            }
        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    protected void RepBigJoinBuy_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (_User != null)
        {
            if (e.CommandName == "Buy")
            {

                if (string.IsNullOrEmpty(_User.IDCardNumber) || string.IsNullOrEmpty(_User.RealityName))
                {
                    Shove._Web.JavaScript.Alert(this.Page, "对不起，您的身份证号码或者真实姓名没有填写，为了不影响您的领奖，请先完善这些资料。谢谢", "Home/Room/UserEdit.aspx");
                    return;
                }


                TextBox tbShare = e.Item.FindControl("tbShare") as TextBox;
                int share = Shove._Convert.StrToInt(tbShare.Text, 0);

                double ShareMoney = 0;

                try
                {
                    ShareMoney = Shove._Convert.StrToDouble((e.Item.FindControl("ShareMoney") as Label).Text, 0);
                }
                catch
                {
                    Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");
                    return;
                }

                if (ShareMoney <= 0 || share < 1)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "请输入认购份数。");

                    return;
                }

                if (Shove._Convert.StrToInt((e.Item.FindControl("ResShare") as HiddenField).Value, 0) < share)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "认购份数不能超过剩余份数" + "(" + (e.Item.FindControl("ResShare") as HiddenField).Value + "份)");

                    tbShare.Text = "1";

                    return;
                }

                DateTime EndTime = Shove._Convert.StrToDateTime((e.Item.FindControl("EndTime") as HiddenField).Value, DateTime.Now.AddMonths(-1).ToString());

                if (DateTime.Now > EndTime)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "投注时间已经截止，不能认购。");

                    return;
                }

                if ((ShareMoney * share) > _User.Balance)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "您的账户余额不足，请先充值，谢谢。", "Home/Room/OnlinePay/Default.aspx");
                    return;
                }

                string ReturnDescription = "";

                if (_User.JoinScheme(Shove._Convert.StrToLong((e.Item.FindControl("SchememId") as HiddenField).Value, 0), share, ref ReturnDescription) < 0)
                {
                    Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                    return;
                }
                else
                {
                    Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindData");
                    Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindLastestUsers");
                    Shove._Web.Cache.ClearCache("Home_Room_CoBuy_BindDataForType" + (e.Item.FindControl("IsuseID") as HiddenField).Value);
                    Shove._Web.Cache.ClearCache("Home_Room_SchemeAll_BindData" + (e.Item.FindControl("IsuseID") as HiddenField).Value);

                    Shove._Web.JavaScript.Alert(this.Page, "认购成功！", "Index.aspx");

                    return;
                }
            }
        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }

    protected void RepFootBallJoinBuy_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (_User != null)
        {
            if (e.CommandName == "Buy")
            {

                if (string.IsNullOrEmpty(_User.IDCardNumber) || string.IsNullOrEmpty(_User.RealityName))
                {
                    Shove._Web.JavaScript.Alert(this.Page, "对不起，您的身份证号码或者真实姓名没有填写，为了不影响您的领奖，请先完善这些资料。谢谢", "Home/Room/UserEdit.aspx");
                    return;
                }


                TextBox tbShare = e.Item.FindControl("tbShare") as TextBox;
                int share = Shove._Convert.StrToInt(tbShare.Text, 0);

                double ShareMoney = 0;

                try
                {
                    ShareMoney = Shove._Convert.StrToDouble((e.Item.FindControl("ShareMoney") as Label).Text, 0);
                }
                catch
                {
                    Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");
                    return;
                }

                if (ShareMoney <= 0 || share < 1)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "请输入认购份数。");

                    return;
                }

                if (Shove._Convert.StrToInt((e.Item.FindControl("ResShare") as HiddenField).Value, 0) < share)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "认购份数不能超过剩余份数" + "(" + (e.Item.FindControl("ResShare") as HiddenField).Value + "份)");

                    tbShare.Text = "1";

                    return;
                }

                DateTime EndTime = Shove._Convert.StrToDateTime((e.Item.FindControl("EndTime") as HiddenField).Value, DateTime.Now.AddMonths(-1).ToString());

                if (DateTime.Now > EndTime)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "投注时间已经截止，不能认购。");

                    return;
                }

                if ((ShareMoney * share) > _User.Balance)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "您的账户余额不足，请先充值，谢谢。", "Home/Room/OnlinePay/Default.aspx");
                    return;
                }

                string ReturnDescription = "";

                if (_User.JoinScheme(Shove._Convert.StrToLong((e.Item.FindControl("SchememId") as HiddenField).Value, 0), share, ref ReturnDescription) < 0)
                {
                    Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                    return;
                }
                else
                {
                    Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindData");
                    Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindLastestUsers");
                    Shove._Web.Cache.ClearCache("Home_Room_CoBuy_BindDataForType" + (e.Item.FindControl("IsuseID") as HiddenField).Value);
                    Shove._Web.Cache.ClearCache("Home_Room_SchemeAll_BindData" + (e.Item.FindControl("IsuseID") as HiddenField).Value);

                    Shove._Web.JavaScript.Alert(this.Page, "认购成功！", "Index.aspx");

                    return;
                }
            }
        }
        else
        {
            Response.Redirect("UserLogin.aspx");
        }
    }
}
