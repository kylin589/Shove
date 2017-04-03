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

public partial class Home_Room_OnlinePay_CardPassword_Default : SitePageBase
{
    public string Balance;
    public string UserName;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (_User != null)
            {
                Balance = _User.Balance.ToString();
                UserName = _User.Name.ToString();
            }

            BindUserPayData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnInit(e);
    }

    #endregion

    private void BindUserPayData()
    {
        if (_User == null)
        {
            return;
        }

        string CacheKeyName = "Home_Room_OnlinePay_CardPassword_Default_BindUserPayData" + _User.ID.ToString();

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKeyName);

        if (dt == null)
        {
            dt = Shove.Database.MSSQL.Select("select a.ID,AgentID,a.DateTime,a.Money,PayNumber from (select ID,[DateTime],[Money],PayNumber from T_UserDetails where OperatorType = 502 and UserID = " + _User.ID.ToString() + ")a inner join T_CardPasswords b on a.PayNumber = b.ID order by a.ID desc");

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试(732)", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKeyName, dt, 60);
        }

        gUserPay.DataSource = dt;
        gUserPay.DataBind();

        this.lblUserPayMoneys.Text = PF.GetSumByColumn(dt, 2, false, gUserPay.PageSize, 0).ToString("N");
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        int Freeze = 0;
        int ReturnValue = 0;
        string ReturnDescription = "";

        int Result = DAL.Procedures.P_CardPasswordTryErrorFreeze(_Site.ID, _User.ID, ref Freeze, ref ReturnValue, ref ReturnDescription);

        if ((Result < 0) || (ReturnValue < 0))
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Room_ViewChase");

            return;
        }

        if (Freeze > 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "您输入错误的卡密号码次数过多，系统已经暂时锁定。" + Freeze.ToString() + "分钟后才可以使用卡密支付功能。");

            return;
        }

        string Number = Shove._Convert.ToDBC(tbCardPassword.Text.Trim());

        if (String.IsNullOrEmpty(Number))
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入充值卡密。");

            return;
        }

        System.Threading.Thread.Sleep(1000);

        if (!Regex.IsMatch(Number, @"^[\d]{20}$", RegexOptions.Compiled | RegexOptions.IgnoreCase))
        {
            ReturnValue = 0;
            ReturnDescription = "";

            DAL.Procedures.P_CardPasswordTryErrorAdd(_User.ID, Number, ref ReturnValue, ref ReturnDescription);

            Shove._Web.JavaScript.Alert(this.Page, "您输入的卡密号码错误!");

            return;
        }

        ReturnDescription = "";

        if (new CardPassword().Use(Number, _Site.ID, _User.ID, ref ReturnDescription) < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

            return;
        }

        Shove._Web.Cache.ClearCache("Home_Room_OnlinePay_CardPassword_Default_BindUserPayData" + _User.ID.ToString());
        Shove._Web.JavaScript.Alert(this.Page, "卡密充值成功。");
    }

    protected void gPagerUserPay_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindUserPayData();
    }

    protected void gPagerUserPay_SortBefore(object source, DataGridSortCommandEventArgs e)
    {
        BindUserPayData();
    }

    protected void gUserPay_ItemDataBound(object sender, DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            try
            {
                e.Item.Cells[3].Text = new CardPassword().GenNumber(PF.GetCallCert(), Shove._Convert.StrToInt(e.Item.Cells[5].Text, 0), Shove._Convert.StrToLong(e.Item.Cells[4].Text, 0));
            }
            catch
            {
                e.Item.Cells[3].Text = e.Item.Cells[6].Text;
            }
        }
    }
}
