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

public partial class Admin_FootballLeagueTypes : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataListZCDCTypeBindData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    #endregion

    protected void btnAddDCType_Click(object sender, EventArgs e)
    {
        string TypeName = tbName.Text.Trim();

        if (TypeName == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "联赛类别不能为空！");

            return;
        }

        bool isUse = Shove._Convert.StrToBool(ddlisUse.SelectedValue.ToString(), false);

        int TypeID = 0;
        string ReturnDescription = "";

        if (DAL.Procedures.P_FootballLeagueTypeAdd(TypeName, tbCode.Text.Trim(), selectColorAdd.Value.ToString(), tbDescription.Text.Trim(), 1, isUse, ref TypeID, ref ReturnDescription) < 0)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_FootballLeagueTypes");

            return;
        }

        if (TypeID < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

            return;
        }

        DataListZCDCTypeBindData();

        Shove._Web.JavaScript.Alert(this.Page, "联赛类别增加成功。");
    }

    protected void DataListZCDCType_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            if (e.CommandName == "btEdit")
            {
                this.DataListZCDCType.EditItemIndex = e.Item.ItemIndex;

                DataListZCDCTypeBindData();

                return;
            }

            if (e.CommandName == "btUpdate")
            {
                TextBox tbName = (TextBox)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("tbName"));
                TextBox tbMarkersColor = (TextBox)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("tbMarkersColor"));
                TextBox tbCode = (TextBox)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("tbCode"));
                TextBox tbDescription = (TextBox)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("tbDescription"));
                HiddenField hfId = (HiddenField)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("hfId"));
                DropDownList ddlMarkersColor = (DropDownList)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("ddlMarkersColor"));
                DropDownList ddlisUse = (DropDownList)(DataListZCDCType.Items[e.Item.ItemIndex].FindControl("ddlisUse"));

                if (tbName.Text.Trim() == "")
                {
                    Shove._Web.JavaScript.Alert(this.Page, "请输入联赛类别名称！");

                    return;
                }

                bool isUse = Shove._Convert.StrToBool(ddlisUse.SelectedValue, false);

                int ID = int.Parse(hfId.Value);
                int ReturnValue = 0;
                string ReturnDescription = "";

                if (DAL.Procedures.P_FootballLeagueTypeEdit(ID, tbName.Text.Trim(), tbCode.Text.Trim(), ddlMarkersColor.SelectedValue.ToString(), tbDescription.Text.Trim(), 1, isUse, ref ReturnValue, ref ReturnDescription) < 0)
                {
                    PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_FootballLeagueTypes");

                    return;
                }

                if (ReturnValue < 0)
                {
                    Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                    return;
                }

                this.DataListZCDCType.EditItemIndex = -1;

                DataListZCDCTypeBindData();

                Shove._Web.JavaScript.Alert(this.Page, "更新成功!");

                return;
            }
        }
    }

    private void DataListZCDCTypeBindData()
    {
        DataTable dt = new DAL.Tables.T_FootballLeagueTypes().Open("", "", "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_FootballLeagueTypes");

            return;
        }

        DataListZCDCType.DataSource = dt;
        DataListZCDCType.DataBind();
    }

    protected void DataListZCDCType_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.EditItem)
        {
            DropDownList ddlMarkersColor = (DropDownList)(e.Item.FindControl("ddlMarkersColor"));
            DropDownList ddlisUse = (DropDownList)(e.Item.FindControl("ddlisUse"));
            TextBox tbMarkersColor = (TextBox)(e.Item.FindControl("tbMarkersColor"));
            TextBox tbisUse = (TextBox)(e.Item.FindControl("tbisUse"));

            DropDownListDefault(ddlMarkersColor, tbMarkersColor.Text.ToString());
            DropDownListDefault(ddlisUse, tbisUse.Text.ToString());
        }
    }

    private void DropDownListDefault(DropDownList ddl, string defaultValue)
    {
        foreach (ListItem item in ddl.Items)
        {
            if (item.Value == defaultValue)
            {
                item.Selected = true;
            }
        }
    }
}
