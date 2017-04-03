using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

public partial class Admin_ExpertsPredictNewsEdit : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            hidID.Value = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("ID"), -1).ToString();
            BindExpertsPredict();
            BindExpertsNewInfo();
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    private void BindExpertsPredict()
    {
        DataTable dtExpertsPredict = new DAL.Tables.T_ExpertsPredict().Open("", "", "[ID]");

        if (dtExpertsPredict == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-40)");

            return;
        }

        ddlExpertsPredictNews.DataSource = dtExpertsPredict;
        ddlExpertsPredictNews.DataTextField = "Name";
        ddlExpertsPredictNews.DataValueField = "ID";
        ddlExpertsPredictNews.DataBind();
    }

    private void BindExpertsNewInfo()
    {
        DataTable dt = new DAL.Tables.T_ExpertsPredictNews().Open("", "ID=" + Shove._Web.Utility.FilteSqlInfusion(hidID.Value) + "", "");

        if (dt == null || dt.Rows.Count == 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "记录不存在！");

            return;
        }

        cbisShow.Checked = Shove._Convert.StrToBool(dt.Rows[0]["ON"].ToString(), true);
        tbContent.Value = dt.Rows[0]["Url"].ToString();
        tbDescription.Text = dt.Rows[0]["Description"].ToString();
        ddlExpertsPredictNews.SelectedValue = dt.Rows[0]["ExpertsPredictID"].ToString();

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string Url = tbContent.Value.Trim();

        if (string.IsNullOrEmpty(Url))
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入内容！");

            return;
        }

        string Description = tbDescription.Text.Trim();

        if (Description == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入文字描述！");

            return;
        }

        DAL.Tables.T_ExpertsPredictNews t_ExpertsPredictNews = new DAL.Tables.T_ExpertsPredictNews();

        t_ExpertsPredictNews.ON.Value = cbisShow.Checked;
        t_ExpertsPredictNews.URL.Value = Url;
        t_ExpertsPredictNews.Description.Value = Description;
        t_ExpertsPredictNews.ExpertsPredictID.Value = ddlExpertsPredictNews.SelectedValue;
        t_ExpertsPredictNews.isWinning.Value = cbisWinning.Checked;

        long Result = t_ExpertsPredictNews.Update("ID=" + Shove._Web.Utility.FilteSqlInfusion(hidID.Value));

        if (Result < 0)
        {
            Shove._Web.JavaScript.Alert(this, "修改失败");

            return;
        }
        Shove._Web.Cache.ClearCache(CacheKey.ExpertsPredictNews);
        Shove._Web.Cache.ClearCache("Default_GetExpertsPredictNews");

        Shove._Web.JavaScript.Alert(this, "修改成功", "ExpertsPredictNews.aspx");

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpertsPredictNews.aspx", true);
    }
}
