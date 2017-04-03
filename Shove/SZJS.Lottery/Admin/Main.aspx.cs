using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Main : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (_User.Competences.CompetencesList == "")
        {
            PF.GoError(ErrorNumber.NotEnoughCompetence, "对不起，您没有足够的权限访问此页面", "Admin_Main");

            return;
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnInit(e);
    }

    #endregion
}
