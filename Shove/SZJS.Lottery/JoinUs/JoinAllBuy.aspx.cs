using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using Shove.Database;

public partial class JoinUs_JoinAllBuy : SitePageBase
{
    public string script = "";
    public static Dictionary<int, string> Lotteries = new Dictionary<int, string>();

    static JoinUs_JoinAllBuy()
    {
        Lotteries[59] = "15X5";
        Lotteries[9] = "22X5";
        Lotteries[65] = "31X7";
        Lotteries[6] = "3D";
        Lotteries[39] = "CJDLT";
        Lotteries[58] = "DF6J1";
        Lotteries[2] = "JQC";
        Lotteries[15] = "LCBQC";
        Lotteries[63] = "PL3";
        Lotteries[64] = "PL5";
        Lotteries[13] = "QLC";
        Lotteries[3] = "QXC";
        Lotteries[1] = "SFC";
        Lotteries[61] = "SSC";
        Lotteries[29] = "SSL";
        Lotteries[5] = "SSQ";
        Lotteries[62] = "SYYDJ";
        Lotteries[74] = "SFC";
        Lotteries[75] = "SFC_9_D";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        //合买方案缓存 60 秒
        string CacheKey = "Home_Room_UserAllBuy_BindData";

        string strCmd = @"select LotteryName, InitiateName,Level, 
                            Money, Schedule,Title,case Schedule when 100 then 1 else 0 end as IsFull,LotteryID,SchemeBonusScale, ID, QuashStatus,(Share-BuyedShare) as ResShare,AssureMoney,Money/Share as ShareMoney,IsuseID,EndTime,AtTopStatus,PlayTypeID 
                        from V_Schemes with (nolock) where IsuseID in 
                        (select id from T_Isuses where  getdate() between StartTime and EndTime) 
                        and Share > 1 and LotteryID in (" + DAL.Functions.F_GetUsedLotteryList(_Site.ID) + ") order by QuashStatus asc,IsFull asc,Schedule desc,[Money] desc";

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dt == null)
        {
            dt = MSSQL.Select(strCmd);

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.GetType().FullName);

                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }

        DataTable dtData = dt.Clone();

        dtData.Columns.Add("Count", typeof(Int32));

        string Condition = "1=1";

        if (ddlLottery.SelectedValue != "-1")
        {
            if (ddlLottery.SelectedValue == "0")
            {
                Condition += " and LotteryID not in(5,6,1,19,39,62,29)";
            }
            else
            {
                if (ddlLottery.SelectedValue == "19")
                {
                    Condition += " and (PlayTypeID = 103 or PlayTypeID = 104) and LotteryID = 1";
                }
                else
                {
                    Condition += " and LotteryID=" + ddlLottery.SelectedValue + "";

                    if (ddlLottery.SelectedValue == "1")
                    {
                        Condition += " and (PlayTypeID = 101 or PlayTypeID = 102)";
                    }
                }
            }
        }

        if (ddlMoney.SelectedValue != "-1")
        {
            Condition += " and " + ddlMoney.SelectedValue;
        }

        if (ddlBonus.SelectedValue != "-1")
        {
            Condition += " and SchemeBonusScale<=" + ddlBonus.SelectedValue;
        }

        if (ddlCondition.SelectedValue != "-1")
        {
            Condition += " and " + ddlCondition.SelectedValue;
        }

        if (tbName.Text != "")
        {
            Condition += " and InitiateName like '%" + Shove._Web.Utility.FilteSqlInfusion(tbName.Text) + "%'";
        }

        int i = 0;
        foreach (DataRow dr in dt.Select(Condition, "QuashStatus asc,IsFull asc, Schedule desc,[Money] desc"))
        {
            dtData.Rows.Add(dr.ItemArray);
            dtData.Rows[i]["Count"] = i + 1;

            i++;
        }

        PF.DataGridBindData(g, dtData, gPager);
    }

    protected void gPager_PageWillChange(object Sender, Shove.Web.UI.PageChangeEventArgs e)
    {
        BindData();
    }

    protected void gPager_SortBefore(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
    {
        BindData();
    }

    protected void g_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
        {
            e.Item.Cells[1].Text = "<a href='../Home/Room/Scheme.aspx?id=" + e.Item.Cells[12].Text + "' target='_blank'>" + e.Item.Cells[1].Text + "</a>";

            string UserName = e.Item.Cells[2].Text;

            e.Item.Cells[2].Text = Shove._String.Cut(UserName, 5);
            e.Item.Cells[2].ToolTip = UserName;

            if (Shove._Convert.StrToDouble(e.Item.Cells[11].Text, 0) > 0)
            {
                e.Item.Cells[2].Text += "<font color=\'red\'>(保)</font>";
            }

            double Level = Shove._Convert.StrToDouble(e.Item.Cells[3].Text, 0);
            e.Item.Cells[3].Text = "<img src='../Home/Room/Images/icon_star.gif' border='0'>"; ;

            for (int i = 0; i < Level; i++)
            {
                if (Level >= 3)
                {
                    e.Item.Cells[3].Text += "<img src='../Home/Room/Images/star.gif' border='0'>";
                }
                else
                {
                    e.Item.Cells[3].Text += "<img src='../Home/Room/Images/icon_star.gif' border='0'>";
                }
            }

            string Title = e.Item.Cells[4].Text.Trim();

            //if (Title == "(无标题)")
            //{
            //    Title = "";
            //}

            e.Item.Cells[4].Text = "<a href='../Home/Room/Scheme.aspx?id=" + e.Item.Cells[12].Text + "' target='_blank'>" + Shove._String.Cut(Title, 10) + "</a>";
            e.Item.Cells[4].ToolTip = Title;

            short QuashStatus = Shove._Convert.StrToShort(e.Item.Cells[13].Text, 0);
            int ResShare = Shove._Convert.StrToInt(e.Item.Cells[8].Text, 0);

            e.Item.Cells[7].Text += "%";

            if (QuashStatus != 0)
            {
                e.Item.Cells[10].Text = "<span style=\"color:Red\">已撤单</span>";
            }
            else
            {
                if (ResShare < 1)
                {
                    e.Item.Cells[10].Text = "<span style=\"color:Red\">已满员</span>";
                }
            }

            TextBox tb = e.Item.FindControl("tbShare") as TextBox;
            tb.ToolTip = "可认购" + e.Item.Cells[8].Text + "份";

            if ((e.Item.Cells[16].Text.Trim() == "103" || e.Item.Cells[16].Text.Trim() == "104") && e.Item.Cells[1].Text.Trim() == "胜负彩")
            {
                e.Item.Cells[1].Text = "任九场";
            }
        }
    }

    protected void g_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (_User != null)
        {
            if (e.CommandName == "Buy")
            {

                if (string.IsNullOrEmpty(_User.IDCardNumber) || string.IsNullOrEmpty(_User.RealityName))
                {
                    Shove._Web.JavaScript.Alert(this.Page, "对不起，您的身份证号码或者真实姓名没有填写，为了不影响您的领奖，请先完善这些资料。谢谢！", "../UserEdit.aspx");
                    return;
                }
            }

            TextBox tbShare = e.Item.FindControl("tbShare") as TextBox;
            int share = 0;
            if (tbShare != null)
            {
                share = Shove._Convert.StrToInt(tbShare.Text, 0);
            }

            double ShareMoney = 0;

            try
            {
                ShareMoney = Shove._Convert.StrToDouble(e.Item.Cells[6].Text, 0);
            }
            catch
            {
                Shove._Web.JavaScript.Alert(this.Page, "输入有错误，请仔细检查。");

                return;
            }

            if (ShareMoney <= 0 || share < 1)
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入认购份数。");

                return;
            }

            if (Shove._Convert.StrToInt(e.Item.Cells[8].Text, 0) < share)
            {
                Shove._Web.JavaScript.Alert(this.Page, "认购份数不能超过剩余份数" + "(" + e.Item.Cells[8].Text + "份)");

                tbShare.Text = "1";

                return;
            }

            DateTime EndTime = Shove._Convert.StrToDateTime(e.Item.Cells[14].Text, DateTime.Now.AddMonths(-1).ToString());

            if (DateTime.Now > EndTime)
            {
                Shove._Web.JavaScript.Alert(this.Page, "投注时间已经截止，不能认购。");

                return;
            }

            if ((ShareMoney * share) > _User.Balance)
            {
                Shove._Web.JavaScript.Alert(this.Page, "您的账户余额不足，请先充值，谢谢。", "../Home/Room/OnlinePay/Default.aspx");
                return;
            }

            string ReturnDescription = "";

            if (_User.JoinScheme(Shove._Convert.StrToLong(e.Item.Cells[12].Text, 0), share, ref ReturnDescription) < 0)
            {
                Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

                return;
            }
            else
            {
                Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindData");
                Shove._Web.Cache.ClearCache("Home_Room_JoinAllBuy_BindLastestUsers");
                Shove._Web.Cache.ClearCache("Home_Room_CoBuy_BindDataForType" + e.Item.Cells[15].Text);
                Shove._Web.Cache.ClearCache("Home_Room_SchemeAll_BindData" + e.Item.Cells[15].Text);

                Shove._Web.JavaScript.Alert(this.Page, "认购成功！", "../JoinUs/JoinAllBuy.aspx");

                return;
            }
        }
        else
        {
            Response.Redirect("../UserLogin.aspx");
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindData();
    }

    protected void ddlLottery_SelectedIndexChanged(object sender, EventArgs e)
    {
        script = "document.getElementById('g').focus();";
        BindData();
    }

    protected void ddlMoney_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }

    protected void ddlBonus_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }

    protected void ddlCondition_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
}



