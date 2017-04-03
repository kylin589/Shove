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

public partial class SiteNews_News : SitePageBase
{
    public string FocusNews = "";
    public string SiteAffiches = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            NewsBind();
        }
    }
    void NewsBind()
    {
        RepZuCai.DataSource = GetNews("足彩资讯", 10);
        RepZuCai.DataBind();
        RepTiCai.DataSource = GetNews("体彩资讯", 10);
        RepTiCai.DataBind();
        RepGaoPing.DataSource = GetNews();
        RepGaoPing.DataBind();
        RepFuCai.DataSource = GetNews("福彩资讯", 10);
        RepFuCai.DataBind();
        RepEpisode.DataSource = GetNews("博彩秘笈", 10);
        RepEpisode.DataBind();
        RepNewWeeks.DataSource = GetNewsWeeks();
        RepNewWeeks.DataBind();
        GetFocusNews();
        RepHotNews.DataSource = GetNews("火热新闻", 7);
        RepHotNews.DataBind();
        RepHangYe.DataSource = GetNews("行业资讯", 10);
        RepHangYe.DataBind();
     
        GetSiteAffiches();
    }

    /// <summary>
    /// 获取彩票新闻
    /// </summary>
    /// <returns></returns>
    private DataTable GetNews(string TypeName, int top)
    {
        string sql = @"select top " + top + " ID,Title,Content,TypeName from V_News where isShow = 1  and [TypeName] = '" + TypeName + "'order by isCommend,ID desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    private DataTable GetNews()
    {
        string sql = @"select top 10 ID,Title,Content,TypeName From V_News where TypeName ='十一运夺金资讯' or TypeName = '时时彩咨询' or TypeName ='11选5资讯' or TypeName = '时时乐资讯'";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    private DataTable GetNewsWeeks()
    {
        string sql = @"select top 10 ID,Title,Content,TypeName From V_News order by [DateTime] desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    /// <summary>
    /// 绑定站点新闻
    /// </summary>
    public void GetFocusNews()
    {
        string key = "Default_GetFocusNews";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);
        if (dt == null)
        {
            dt = new DAL.Tables.T_FocusNews().Open("top 8 *", "", "");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }
        DataRow[] drs = dt.Select("IsMaster=1", "Order ASC");
        if (drs.Length > 0)
        {
            FocusNews = "<a href=\"" + drs[0]["Url"].ToString() + "\" target=\"_blank\" style=\"font-size:16px;\" title=\"" + drs[0]["Title"].ToString() + "\">" + Shove._String.Cut(drs[0]["Title"].ToString(), 23) + "</a>";
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
        string CacheKey = "SiteAffiches";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        if (dt == null)
        {
            dt = new DAL.Tables.T_SiteAffiches().Open("top 10 *", "SiteID = " + _Site.ID.ToString(), "[DateTime] desc");
            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
                return;
            }
        }

        DataRow[] drs = dt.Select("isCommend=1", "DateTime DESC");
        if (drs.Length > 0)
        {
            SiteAffiches = "<a href=\"NewDetail.aspx?SiteId=" + drs[0]["ID"].ToString() + "\" target=\"_blank\" style=\"font-size:16px;\" title=\"" + drs[0]["Title"].ToString() + "\">" + Shove._String.Cut(drs[0]["Title"].ToString(), 23) + "</a>";
        }
        Shove._Web.Cache.SetCache(CacheKey, dt, 600);

        RepSiteAffiches.DataSource = dt;
        RepSiteAffiches.DataBind();

    }
    public string Format(string Str)
    {
        return System.Web.HttpUtility.UrlEncode(Str);
    }
}
