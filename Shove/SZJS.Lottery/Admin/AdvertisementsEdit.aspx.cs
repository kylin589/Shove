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

public partial class Admin_AdvertisementsEdit : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    protected override void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.FillContent);

        base.OnInit(e);
    }

    private void BindData()
    {
        HidID.Value = Shove._Web.Utility.GetRequest("ID");
        HidLotteryID.Value = Shove._Web.Utility.GetRequest("LotteryID");
        HidTypeID.Value = Shove._Web.Utility.GetRequest("TypeID");

        int id = Shove._Convert.StrToInt(HidID.Value, 0);

        if (id < 0)
        {
            PF.GoError(ErrorNumber.Unknow, "参数错误或数据被删除", this.Page.GetType().BaseType.FullName);

            return;
        }

        DataTable dt = new DAL.Tables.T_Advertisements().Open("", "ID=" + id.ToString() + "", "");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        if (dt.Rows.Count == 0)
        {
            PF.GoError(ErrorNumber.Unknow, "参数错误或数据被删除", this.Page.GetType().BaseType.FullName);

            return;
        }

        DataRow dr = dt.Rows[0];

        string[] Title = dr["Title"].ToString().Split(new string[]{"Color"},StringSplitOptions.None);//格式：标题Color颜色
        tbName.Text = Title[0];
        tbUrl.Text = dr["Url"].ToString();
        tbOrder.Text = dr["Order"].ToString();
        cbisShow.Checked = Shove._Convert.StrToBool(dr["isShow"].ToString(), true);

        if(Title.Length == 2)
        {
            HidColor.Value = Title[1];
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string Title = tbName.Text.Trim();

        if (Title == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入广告标题！");

            return;
        }

        string Url = tbUrl.Text.Trim();

        Regex regex = new Regex(@"([\w-]+\.)+[\w-]+.([^a-z])(/[\w- ./?%&=]*)?|[a-zA-Z0-9\-\.][\w-]+.([^a-z])(/[\w- ./?%&=]*)?", RegexOptions.IgnoreCase | RegexOptions.Compiled);
        Match m = regex.Match(Url);

        if (!m.Success)
        {
            Shove._Web.JavaScript.Alert(this, "输入的URL地址格式错误，请仔细检查。");

            return;
        }

        int order = Shove._Convert.StrToInt(tbOrder.Text.Trim(),-1);

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

        ad.Title.Value = Title + "Color" + color;
        ad.Order.Value = order;
        ad.Url.Value = Url;
        ad.isShow.Value = cbisShow.Checked;
        ad.LotteryID.Value = HidLotteryID.Value;
        ad.Name.Value = (HidTypeID.Value == "1" ? "广告一" : 
                        HidTypeID.Value == "2" ? "广告二" :
                        HidTypeID.Value == "3" ? "广告三" :
                        HidTypeID.Value == "4" ? "广告四" :
                        HidTypeID.Value == "5" ? "广告五" :
                        HidTypeID.Value == "6" ? "广告六" : 
                        "广告七");

        long l = ad.Update("ID = " +  Shove._Web.Utility.FilteSqlInfusion(HidID.Value));

        if (l > 0)
        {
            //清除缓存
            string CacheKey = "Advertisements";
            Shove._Web.Cache.ClearCache(CacheKey);

            Shove._Web.JavaScript.Alert(this, "修改成功", "Advertisements.aspx?LotteryID=" + HidLotteryID.Value + "&TypeID=" + HidTypeID.Value);
        }
        else
        {
            Shove._Web.JavaScript.Alert(this,"修改失败");
        }
    }
}
