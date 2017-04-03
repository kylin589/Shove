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

public partial class Admin_CardPasswordUsers : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isRequestLogin = true;
        RequestLoginPage = "Admin/CardPasswordUsers.aspx";

        RequestCompetences = Competences.BuildCompetencesList(Competences.AddMoney);

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        DataTable dt = new DAL.Tables.T_CardPasswordAgents().Open("", "", "ID desc");
        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);
            return;
        }

        PF.DataGridBindData(g, dt, gPager);
    }
    protected void g_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Del")
        {
            new DAL.Tables.T_CardPasswordAgents().Delete("ID=" + e.Item.Cells[6].Text.Trim());

            BindData();
            return;
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
