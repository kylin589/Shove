using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

public partial class Admin_ExpertsPredictAdd : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindLotteryType();
            BindData();
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    private void BindLotteryType()
    {
        DataTable dtLotteries = new DAL.Tables.T_Lotteries().Open("[ID], [Name], [Code]", "[ID] in(" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[ID]");

        if (dtLotteries == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-46)");

            return;
        }

        ddlLotteries.DataSource = dtLotteries;
        ddlLotteries.DataTextField = "Name";
        ddlLotteries.DataValueField = "ID";
        ddlLotteries.DataBind();
    }

    private void BindData()
    {
        ddlImage.Items.Clear();
        ddlImage.Items.Add("--选择图片--");

        string UploadPath = this.Server.MapPath("../Private/" + _Site.ID.ToString() + "/ExpertsImages");

        if (!System.IO.Directory.Exists(UploadPath))
        {
            System.IO.Directory.CreateDirectory(UploadPath);
        }
        else
        {
            string[] FileList = Shove._IO.File.GetFileList(UploadPath);

            if (FileList != null)
            {
                for (int i = 0; i < FileList.Length; i++)
                {
                    ddlImage.Items.Add(FileList[i]);
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string Name = tbName.Text.Trim();

        if (Name == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入专家姓名！");

            return;
        }
        else
        {
            if (new DAL.Tables.T_Users().GetCount("Name='" + tbName.Text.Trim() + "'") == 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, "用户名不存在！");

                return;
            }
        }

        string Image = "";

        //if (tbImage.Value.Trim() != "")
        //{
        //    string UploadPath = this.Server.MapPath("../Private/" + _Site.ID.ToString() + "/ExpertsImages");

        //    if (!System.IO.Directory.Exists(UploadPath))
        //    {
        //        System.IO.Directory.CreateDirectory(UploadPath);
        //    }

        //    if (Shove._IO.File.UploadFile(this.Page, tbImage, "../Private/" + _Site.ID.ToString() + "/ExpertsImages/", ref Image, true, "image") != 0)
        //    {
        //        Shove._Web.JavaScript.Alert(this.Page, "图片文件上传错误！");

        //        return;
        //    }
        //}

        if (ddlImage.SelectedIndex > 0)
        {
            Image = ddlImage.SelectedItem.Text;
        }

        string Description = tbDescription.Text.Trim();

        if (Description == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入专家描述！");

            return;
        }

        DAL.Tables.T_ExpertsPredict t_ExpertsPredict = new DAL.Tables.T_ExpertsPredict();

        t_ExpertsPredict.ON.Value = cbisShow.Checked;
        t_ExpertsPredict.Name.Value = Name;
        t_ExpertsPredict.LotteryID.Value = ddlLotteries.SelectedValue;
        t_ExpertsPredict.URL.Value = Image;
        t_ExpertsPredict.Description.Value = Description;

        long Result = t_ExpertsPredict.Insert();

        if (Result < 0)
        {
            Shove._Web.JavaScript.Alert(this, "添加失败");

            return;
        }

        Shove._Web.Cache.ClearCache("Default_GetExpertsPredict");

        Shove._Web.JavaScript.Alert(this, "添加成功", "ExpertsPredict.aspx");

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpertsPredict.aspx", true);
    }
}
