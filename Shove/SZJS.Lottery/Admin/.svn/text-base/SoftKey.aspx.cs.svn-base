using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SoftKey : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            tbKey.Text = PF.GetMID();
            SystemOptions so = new SystemOptions();
            tbKeyOK.Attributes.Add("value", so["SerialNumberForShoveSoft_MHB"].Value.ToString());
        }
    }
    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.Options, Competences.QueryData);

        base.OnInit(e);
    }

    #endregion
    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {
            SystemOptions so = new SystemOptions();
            so["SerialNumberForShoveSoft_MHB"] = new OptionValue(tbKeyOK.Text);
        }
        catch (Exception exception)
        {
            PF.GoError(ErrorNumber.Unknow, exception.Message, "Admin_SoftKey.aspx");

            return;
        }
        Shove._Web.JavaScript.Alert(this.Page, "注册成功。");
    }
}
