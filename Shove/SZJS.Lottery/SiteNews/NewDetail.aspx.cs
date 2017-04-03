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

public partial class SiteNews_NewDetail : SitePageBase
{
    public string id = "1";
    public string SiteId = "1";
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string TypeName = Request.QueryString["TypeName"];
            if (Request.QueryString["id"] != null)
            {
                id = Request.QueryString["id"];
               
                DataTable dt = GetRepHome(TypeName);
                RepHome.DataSource = dt;
                RepHome.DataBind();
                RepTitle.DataSource = dt;
                RepTitle.DataBind();
                RepCount.DataSource = dt;
                RepCount.DataBind();
            }
            if (Request.QueryString["SiteId"] != null)
            {
                SiteId = Request.QueryString["SiteId"];
                DataTable dt = GetSiteAffiches();
                RepTitle.DataSource = dt;
                RepTitle.DataBind();
                RepHome.DataSource = dt;
                RepHome.DataBind();
                RepCount.DataSource = dt;
                RepCount.DataBind();
            }
            NewsBind();
        }
    }

    private void NewsBind()
    {
        RepNewWeeks.DataSource = GetNewsWeeks();
        RepNewWeeks.DataBind();

        RepYuCe.DataSource = GetReps("双色球预测");
        RepYuCe.DataBind();

        RepHotNews.DataSource = GetNews("火热新闻");
        RepHotNews.DataBind();
        RepHangYe.DataSource = GetNews("行业资讯");
        RepHangYe.DataBind();
    }
    /// <summary>
    /// 获取彩票新闻
    /// </summary>
    /// <returns></returns>
    private DataTable GetRepHome(string strTypeName)
    {
        string sql =@"select Title,Content,DateTime,ReadCount,TypeName from V_News where ID=" + id;
        if (strTypeName !=null&&strTypeName!="")
        {
            sql = @"select Title,Content,DateTime,ReadCount,TypeName from V_News where ID=" + id + " and TypeName='" + strTypeName + "'";
        }
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        DAL.Tables.T_News news = new DAL.Tables.T_News();
        news.ReadCount.Value =Convert.ToInt32(dt.Rows[0]["ReadCount"].ToString()) + 1;
        news.Update("ID=" + id);
        return dt;
    }
    /// <summary>
    /// 获取站点公告
    /// </summary>
    /// <returns></returns>
    private DataTable GetSiteAffiches()
    {
        string sql = @"select Title,Content,DateTime,ID as ReadCount from T_SiteAffiches where ID=" + SiteId;
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    private DataTable GetReps(string TypeName)
    {
        string sql = @"select top 50 ID,Title,Content,TypeName from V_News where isShow = 1  and [TypeName] = '" + TypeName + "'order by isCommend,ID desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }

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
    public string Format(string Str)
    {
        return System.Web.HttpUtility.UrlEncode(Str);
    }
}
