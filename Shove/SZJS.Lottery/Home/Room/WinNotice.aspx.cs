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
using System.Text;

using Shove.Database;

public partial class Home_Room_WinNotice : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetWinNotice();
        }
    }

    /// <summary>
    /// 获得开奖公告
    /// </summary>
    private void GetWinNotice()
    {
        string key = "GetWinNoticeTotal";

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(key);

        StringBuilder sb = new StringBuilder();

        if (dt == null)
        {
            sb.AppendLine(@"select a.ID, WinMoney,b.Name as LotteryName,PlayTypeName,c.Name as InitiateName from                            
                (select top 12 a.ID,InitiateUserID,LotteryID,Name as PlayTypeName, WinMoney
                from T_Schemes a inner join T_PlayTypes b on a.PlayTypeID = b.ID where WinMoney > 0 order by a.ID desc)a
                inner join T_Lotteries b on a.LotteryID = b.ID inner join T_Users c on a.InitiateUserID = c.ID");

            dt = MSSQL.Select(sb.ToString());

            if (dt == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据读写错错误", this.GetType().BaseType.FullName);

                return;
            }

            dt.Columns.Add("Content", typeof(String));

            string lotteryName = "";

            foreach (DataRow dr in dt.Rows)
            {
                lotteryName = dr["LotteryName"].ToString();

                if (lotteryName.IndexOf("江西") > -1)
                {
                    lotteryName = lotteryName.Replace("江西", "");
                }

                sb = new StringBuilder();

                sb.Append("<a style=\"text-decoration:none;font-size:12px;\"  target=\"_blank\" href=\"Scheme.aspx?id=" + dr["ID"].ToString() + "\"/>")
                    .Append("<span>")
                    .Append("<span style=\"font-size:12px;\">")
                     .Append(Shove._String.Cut(dr["InitiateName"].ToString(), 4))
                     .Append("</span>&nbsp;喜中")
                     .Append("" + lotteryName)
                     .Append("" + dr["PlayTypeName"].ToString())
                     .Append("</span><span style=\"font-size:12px;color:Red\">")
                     .Append(Shove._Convert.StrToDouble(dr["WinMoney"].ToString(), 0).ToString())
                     .Append("</span><span>元</span></a>");

                dr["Content"] = sb.ToString();

                dt.AcceptChanges();
            }

            Shove._Web.Cache.SetCache(key, dt, 900);
        }

        this.dlWinNotice.DataSource = dt;
        this.dlWinNotice.DataBind();
    }
    protected void dlWinNotice_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
