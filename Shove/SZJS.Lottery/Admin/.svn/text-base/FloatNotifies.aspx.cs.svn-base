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

public partial class Admin_FloatNotifies : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();

            rblTime.SelectedValue = _Site.SiteOptions["Opt_FloatNotifiesTime"].Value.ToString();

            lbAdd.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.FillContent));
            rblTime.Visible = lbAdd.Visible;
            g.Columns[5].Visible = lbAdd.Visible;
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent,Competences.QueryData);

        base.OnInit(e);
    }

    private void BindData()
    {
        string CacheKey = "FloatNotifyContent";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dt == null)
        {
            dt = new DAL.Tables.T_FloatNotify().Open("", "", "[Order] asc,[DateTime] desc");

            if (dt != null && dt.Rows.Count > 0)
            {
                Shove._Web.Cache.SetCache(CacheKey, dt, 60000);
            }
        }

        g.DataSource = dt;
        g.DataBind();
    }

    protected void g_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            CheckBox cb = (CheckBox)e.Item.Cells[4].FindControl("cbisShow");
            cb.Checked = Shove._Convert.StrToBool(e.Item.Cells[7].Text, true);

            e.Item.Cells[0].Text = e.Item.Cells[0].Text.Split(new string[] { "Color" }, StringSplitOptions.None)[0];
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            this.Response.Redirect("FloatNotifiesEdit.aspx?ID=" + e.Item.Cells[6].Text, true);
        }

        if (e.CommandName == "Deletes")
        {
            DAL.Tables.T_FloatNotify fn = new DAL.Tables.T_FloatNotify();

            fn.Delete("ID="+e.Item.Cells[6].Text);

            Shove._Web.Cache.ClearCache("FloatNotifyContent");
            BindData();
        }
    }

    protected void rblTime_SelectedIndexChanged(object sender, EventArgs e)
    {
        _Site.SiteOptions["Opt_FloatNotifiesTime"] = new OptionValue(rblTime.SelectedValue);
    }
}
