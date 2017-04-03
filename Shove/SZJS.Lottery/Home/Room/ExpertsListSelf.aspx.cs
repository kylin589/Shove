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

public partial class Home_Room_ExpertsListSelf : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (_Site.SiteOptions["Opt_Experts_Status_ON"].ToBoolean(false))
            {
                BindData();
            }
        }
    }

    #region Web 窗体设计器生成的代码

    protected override void OnLoad(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;
        isRequestLogin = true;

        base.OnLoad(e);
    }

    #endregion

    private void BindData()
    {
        labName.Text = _User.Name;
        labUserType.Text = ((_User.UserType == 1) ? "普通用户" : "高级用户");
        labLevel.Text = _User.Level.ToString();

        string UseLotteriesList = DAL.Functions.F_GetExpertsLotteryList(_Site.ID, _User.ID);

        if (UseLotteriesList == "")
        {
            labExpertsList.Text = "<font color='red'>您还不是任何彩种的专家!</font>";

            return;
        }

        DataTable dt = new DAL.Views.V_Experts().Open("ID,LotteryName,[DateTime],MaxPrice,BonusScale,Level", "UserID = " + _User.ID.ToString() + " and LotteryID in (" + UseLotteriesList + ")", "");

        if ((dt == null) || (dt.Rows.Count == 0))
        {
            labExpertsList.Text = "<font color='red'>您还不是任何彩种的专家!</font>";

            return;
        }

        g.DataSource = dt;
        g.DataBind();
    }

    protected void btnExpertTo_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExpertsReg.aspx");
    }
}
