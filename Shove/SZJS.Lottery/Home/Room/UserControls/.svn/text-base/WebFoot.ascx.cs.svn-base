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

using Shove.Database;

public partial class Home_Room_UserControls_WebFoot : UserControlBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            GetFriendLinks();
        }
    }
    private void GetFriendLinks()
    {
        string CacheKey = "T_FriendshipLinks_Links";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);
        if (dt == null)
        {
            dt = MSSQL.Select("select LinkName,Url,LogoUrl from T_FriendshipLinks where SiteID = @SiteID order by [Order] asc ",
            new MSSQL.Parameter("SiteID", SqlDbType.Int, 0, ParameterDirection.Input, _Site.ID));
        }
        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }
        if (dt.Rows.Count > 0)
        {
            Shove._Web.Cache.SetCache("T_FriendshipLinks_Links", dt);
        }
        dlFriendLinks.DataSource = dt;
        dlFriendLinks.DataBind();
    }
}
