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

public partial class Home_Room_Commend : SitePageBase
{
    protected long UserID;
    protected string UserName;

    protected void Page_Load(object sender, EventArgs e)
    {
        UserID = _User.ID;
        UserName = _User.Name;

        if (!this.IsPostBack)
        {
            BindData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;
        isRequestLogin = true;

        base.OnInit(e);
    }

    #endregion
    private void BindData()
    {
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Shove._Web.WebConfig.GetAppSettingsString("SystemPreFix") + _Site.ID.ToString() + "MemberCommend_" + _User.ID.ToString());

        if (dt == null)
        {
            dt = new DAL.Views.V_Users().Open("", "CommenderID = " + _User.ID.ToString(), "[RegisterTime]");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Room_Commend");

                return;
            }

            Shove._Web.Cache.SetCache(Shove._Web.WebConfig.GetAppSettingsString("SystemPreFix") + _Site.ID.ToString() + "MemberCommend_" + _User.ID.ToString(), dt);
        }

        PF.DataGridBindData(g, dt, gPager);
    }

    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            short UserType = Shove._Convert.StrToShort(e.Item.Cells[5].Text, 1);

            e.Item.Cells[5].Text = (UserType == 1 ? "普通会员" : "<Font color=\'Red\'>高级会员</font>");
        }
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindData();
    }

    protected void gPager_SortBefore(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
    {
        BindData();
    }
}
