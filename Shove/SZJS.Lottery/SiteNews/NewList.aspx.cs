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

public partial class SiteNews_NewList : SitePageBase
{
    public string Newsid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Newsid = Request["TypeId"];
        if (Newsid == null)
        {
            Newsid = "101";
        }
        if (!IsPostBack)
        {
            NewsBind();
            BindData();
        }
        
    }

    private void NewsBind()
    {
        RepNewWeeks.DataSource = GetNewsWeeks();
        RepNewWeeks.DataBind();
        RepHotNews.DataSource = GetNews("火热新闻");
        RepHotNews.DataBind();
        RepHangYe.DataSource = GetNews("行业资讯");
        RepHangYe.DataBind();
    }


    private void BindData()
    {
        string sql = @"select ID,Title,Content,TypeName from V_News  where TypeId in ("+Newsid+")";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        PF.DataGridBindData(RepTitle , dt, gPager);
    }

    /// <summary>
    /// 获取彩票新闻
    /// </summary>
    /// <returns></returns>

    private DataTable GetNews(string TypeName)
    {
        string sql = @"select top 10 ID,Title,Content,TypeName from V_News where isShow = 1  and [TypeName] = '" + TypeName + "'order by isCommend,ID desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    private DataTable GetNews()
    {
        string sql = @"select top 10 ID,Title,Content,TypeName From V_News where TypeName in('十一运夺金资讯','时时彩咨询','11选5资讯','时时乐资讯')";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    private DataTable GetNewsWeeks()
    {
        string sql = @"select top 10 ID,Title,Content,TypeName From V_News order by [DateTime] desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindData();
    }
    protected void gPager_SortBefore(object source, DataGridSortCommandEventArgs e)
    {
        BindData();
    }
}
