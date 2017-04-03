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

public partial class Admin_FriendshipLinksEdit : AdminPageBase
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
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        ddlImage.Items.Clear();
        ddlImage.Items.Add("--选择图片--");

        string UploadPath = this.Server.MapPath("../Private/" + _Site.ID.ToString() + "/FriendshipLinks");

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

        long FriendshipLinkID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("id"), -1);

        if (FriendshipLinkID < 0)
        {
            PF.GoError(ErrorNumber.Unknow, "参数错误", this.Page.GetType().BaseType.FullName);

            return;
        }

        tbID.Text = FriendshipLinkID.ToString();

        DataTable dt = new DAL.Tables.T_FriendshipLinks().Open("", "SiteID = " + _Site.ID.ToString() + " and [ID] = " + FriendshipLinkID.ToString(), "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        tbName.Text = dt.Rows[0]["LinkName"].ToString();
        cbisShow.Checked = Shove._Convert.StrToBool(dt.Rows[0]["isShow"].ToString(), true);
        tbOrder.Text = dt.Rows[0]["Order"].ToString();
        tbUrl.Text = dt.Rows[0]["Url"].ToString();
        Shove.ControlExt.SetDownListBoxText(ddlImage, dt.Rows[0]["LogoUrl"].ToString());
    }

    protected void btnSave_Click(object sender, System.EventArgs e)
    {
        string LinkName = tbName.Text.Trim();

        if (LinkName == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入友情链接名称。");

            return;
        }

        string Url = tbUrl.Text.Trim();

        if (Url == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入友情链接网址。");

            return;
        }

        int Order = Shove._Convert.StrToInt(tbOrder.Text, 0);

        string LogoUrl = "";

        if (!cbNoEditImage.Checked)
        {
            if (tbImage.Value.Trim() != "")
            {
                string UploadPath = this.Server.MapPath("../Private/" + _Site.ID.ToString() + "/FriendshipLinks");

                if (!System.IO.Directory.Exists(UploadPath))
                {
                    System.IO.Directory.CreateDirectory(UploadPath);
                }

                if (Shove._IO.File.UploadFile(this.Page, tbImage, "../Private/" + _Site.ID.ToString() + "/FriendshipLinks/", ref LogoUrl, true, "image") != 0)
                {
                    Shove._Web.JavaScript.Alert(this.Page, "图片文件上传错误！");

                    return;
                }
            }
            else
            {
                if (ddlImage.SelectedIndex > 0)
                {
                    LogoUrl = ddlImage.SelectedItem.Text;
                }
            }
        }

        DAL.Tables.T_FriendshipLinks T_FriendshipLinks = new DAL.Tables.T_FriendshipLinks();

        T_FriendshipLinks.LinkName.Value = LinkName;
        T_FriendshipLinks.Url.Value = Url;
        T_FriendshipLinks.Order.Value = Order;
        T_FriendshipLinks.isShow.Value = cbisShow.Checked;

        if (!cbNoEditImage.Checked)
        {
            T_FriendshipLinks.LogoUrl.Value = LogoUrl;    
        }

        if (T_FriendshipLinks.Update("[ID] = " + Shove._Web.Utility.FilteSqlInfusion(tbID.Text)) < 0)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        Shove._Web.Cache.ClearCache("T_FriendshipLinks_Default");
        Shove._Web.Cache.ClearCache("T_FriendshipLinks_Links");
        this.Response.Redirect("FriendshipLinks.aspx", true);
    }
}
