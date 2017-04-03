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

using Shove.Database;

public partial class Admin_UploadWinLotteryImage : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    #endregion

    protected void btnGO_Click(object sender, EventArgs e)
    {
        string SchemeNumber = Shove._Web.Utility.FilteSqlInfusion(tbSchemeNumber.Text.Trim());

        if (SchemeNumber == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入方案号。");

            return;
        }

        DataTable dt = new DAL.Tables.T_Schemes().Open("", "SchemeNumber='" + SchemeNumber + "'", "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_UploadWinLotteryImage");

            return;
        }

        if (dt.Rows.Count < 1)
        {
            Shove._Web.JavaScript.Alert(this.Page, "方案号不存在。");

            return;
        }

        DataRow dr = dt.Rows[0];

        if (!Shove._Convert.StrToBool(dr["Buyed"].ToString(), false))
        {
            Shove._Web.JavaScript.Alert(this.Page, "该方案号没有出票。");

            return;
        }

        if (Shove._IO.File.UploadFile(this.Page, fileImage, "../Temp/", "SchemeWinImage" + SchemeNumber + ".jpg", true, "image") < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "文件上传错误。");

            return;
        }

        string FileName = this.Server.MapPath("../Temp/SchemeWinImage" + SchemeNumber + ".jpg");

        byte[] Data = System.IO.File.ReadAllBytes(FileName);

        System.IO.File.Delete(FileName);

        if (Data == null)
        {
            Shove._Web.JavaScript.Alert(this.Page, "文件格式错误。");

            return;
        }

        MSSQL.ExecuteNonQuery("update T_Schemes set WinImage = @p1 where [SchemeNumber] = @p2",
            new MSSQL.Parameter("p1", SqlDbType.VarChar, 0, ParameterDirection.Input, Data),
            new MSSQL.Parameter("p2", SqlDbType.VarChar, 0, ParameterDirection.Input, SchemeNumber));

        Shove._Web.JavaScript.Alert(this.Page, "文件上传成功！");
    }
}
