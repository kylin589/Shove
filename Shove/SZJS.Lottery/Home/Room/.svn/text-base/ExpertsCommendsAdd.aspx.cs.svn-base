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

public partial class Home_Room_ExpertsCommendsAdd : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!_Site.SiteOptions["Opt_Experts_Status_ON"].ToBoolean(false))
        {
            PF.GoError(ErrorNumber.Unknow, "功能无效，限制访问", this.GetType().BaseType.FullName);

            return;
        }

        if (!IsPostBack)
        {
            BindData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        isRequestLogin = true;

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        string UseLotteriesList = DAL.Functions.F_GetExpertsLotteryList(_Site.ID, _User.ID);
        if (UseLotteriesList == "")
        {
            PF.GoError(ErrorNumber.NoData, "没有您的相关数据或者您的申请还未处理", this.GetType().BaseType.FullName);

            return;
        }

        DataTable dt = new DAL.Views.V_Experts().Open("ID,LotteryName", "UserID = " + _User.ID.ToString() + " and LotteryID in (" + UseLotteriesList + ")", "");

        if ((dt == null) || (dt.Rows.Count == 0))
        {
            PF.GoError(ErrorNumber.NoData, "没有您的相关数据或者您的申请还未处理", this.GetType().BaseType.FullName);

            return;
        }

        long ID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("ID"), -1);

        Shove.ControlExt.FillDropDownList(ddlExperts, dt, "LotteryName", "ID");

        if (ID > 0)
        {
            Shove.ControlExt.SetDownListBoxTextFromValue(ddlExperts, ID.ToString());
        }

        ddlExperts_SelectedIndexChanged(ddlExperts, new EventArgs());
    }

    private void FillDropDownListddlIsuse()
    {
        DataTable dt = new DAL.Tables.T_Isuses().Open("[ID], [Name]", "LotteryID = (select [Lotteryid] from V_Experts where ID = " + Shove._Web.Utility.FilteSqlInfusion(ddlExperts.SelectedValue) + ") and EndTime > GetDate() and isOpened = 0", "EndTime");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        labTipInfo.Visible = (dt.Rows.Count <= 0);

        if (dt.Rows.Count == 0)
        {
            btnAdd.Enabled = false;
        }
        else
        {
            btnAdd.Enabled = true;
        }

        Shove.ControlExt.FillDropDownList(ddlIsuse, dt, "Name", "ID");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (tbTitle.Text.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入推荐号码的标题！");

            return;
        }

        if (tbNumber.Text.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入推荐的号码！");

            return;
        }

        if (tbPrice.Text.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入推荐号码的价格！");

            return;
        }

        if (double.Parse(tbPrice.Text.Trim()) > double.Parse(labMaxPrice.Text))
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入推荐号码的价格超出了最大价格！");

            return;
        }

        if (tbContent.Value.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入推荐号码的说明信息！");

            return;
        }

        long ExpertsCommendsID = 0;
        string ReturnDescription = "";

        if (DAL.Procedures.P_ExpertsCommendAdd(_Site.ID, long.Parse(ddlExperts.SelectedValue), DateTime.Now, long.Parse(ddlIsuse.SelectedValue), tbTitle.Text.Trim(), tbContent.Value.Trim(), tbNumber.Text.Trim(), double.Parse(tbPrice.Text.Trim()), ref ExpertsCommendsID, ref ReturnDescription) < 0)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        if (ExpertsCommendsID < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

            return;
        }

        string key = "ExpertRecomend_" + _Site.ID + "_" + this.ddlExperts.SelectedValue;
        Shove._Web.Cache.ClearCache(key);
        Shove._Web.Cache.ClearCache("ExpertRecomend_" + _Site.ID + "_-1");

        Shove._Web.JavaScript.Alert(this.Page, "信息添加成功！", "ExpertsCommendsAdd.aspx?ID=" + Shove._Web.Utility.FilteSqlInfusion(ddlExperts.SelectedValue));

        return;
    }

    protected void ddlExperts_SelectedIndexChanged(object sender, EventArgs e)
    {
        MoreThanExpertsMaxPrice(long.Parse(ddlExperts.SelectedValue));

        FillDropDownListddlIsuse();
    }

    private void MoreThanExpertsMaxPrice(long ExpertsID)
    {
        DataTable dt = new DAL.Views.V_Experts().Open("MaxPrice", "ID = " + ExpertsID, "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName);

            return;
        }

        if (dt.Rows.Count == 0)
        {
            PF.GoError(ErrorNumber.NoData, "暂无数据", this.GetType().BaseType.FullName);

            return;
        }

        double MaxPrice1 = Math.Round(double.Parse(dt.Rows[0][0].ToString()), 2);
        labMaxPrice.Text = MaxPrice1.ToString();
    }
}
