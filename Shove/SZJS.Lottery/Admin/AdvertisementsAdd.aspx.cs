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
using System.Text.RegularExpressions;

public partial class Admin_AdvertisementsAdd : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindType();
        }
    }

    private void BindType()
    {
        string LotteryID = Shove._Web.Utility.GetRequest("LotteryID");
        string TypeID = Shove._Web.Utility.GetRequest("TypeID");

        if (ddlType.Items.FindByValue(TypeID) != null)
        {
            ddlType.SelectedValue = TypeID;
        }

        string CacheKey = "dtLotteriesUseLotteryList";
        DataTable dtLotteries = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dtLotteries == null)
        {
            dtLotteries = new DAL.Tables.T_Lotteries().Open("[ID], [Name], [Code]", "[ID] in(" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[ID]");

            if (dtLotteries == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().BaseType.FullName + "(-46)");

                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dtLotteries, 6000);
        }

        ddlLotteries.DataSource = dtLotteries;
        ddlLotteries.DataTextField = "Name";
        ddlLotteries.DataValueField = "ID";
        ddlLotteries.DataBind();

        if (ddlLotteries.Items.FindByValue(LotteryID) != null)
        {
            ddlLotteries.SelectedValue = LotteryID;
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string Title = tbName.Text.Trim();

        if (Title == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入广告标题！");

            return;
        }

        string Url = tbUrl.Text.Trim();

        Regex regex = new Regex(@"^([\w-]+\.)+[\w-]+.([^a-z])(/[\w- ./?%&=]*)?|[a-zA-Z0-9\-\.][\w-]+.([^a-z])(/[\w- ./?%&=]*)?", RegexOptions.IgnoreCase | RegexOptions.Compiled);
        Match m = regex.Match(Url);

        if (!m.Success)
        {
            Shove._Web.JavaScript.Alert(this, "输入的URL地址格式错误，请仔细检查。");

            return;
        }

        int order = Shove._Convert.StrToInt(tbOrder.Text.Trim(), -1);

        if (order < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "顺序输入非法！");

            return;
        }

        DAL.Tables.T_Advertisements ad = new DAL.Tables.T_Advertisements();

        string color = Shove._Web.Utility.GetRequest("highlight_color");

        if (color == "")
        {
            color = "#000000";
        }

        ad.Order.Value = order;
        ad.Url.Value = Url;
        ad.Title.Value = Title + "Color" + color;
        ad.LotteryID.Value = ddlLotteries.SelectedValue;
        ad.Name.Value = ddlType.SelectedItem.Text;

        long l = ad.Insert();

        if (l > 0)
        {
            //清除缓存
            string CacheKey = "Advertisements";
            Shove._Web.Cache.ClearCache(CacheKey);

            Shove._Web.JavaScript.Alert(this, "添加成功", "Advertisements.aspx?LotteryID=" + ddlLotteries.SelectedValue + "&TypeID=" + ddlType.SelectedValue);
        }
        else
        {
            Shove._Web.JavaScript.Alert(this, "添加失败");
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Advertisements.aspx?LotteryID=" +ddlLotteries.SelectedValue + "&TypeID=" + ddlType.SelectedValue, true);
    }
}
