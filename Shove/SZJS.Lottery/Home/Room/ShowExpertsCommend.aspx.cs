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

public partial class Home_Room_ShowExpertsCommend : SitePageBase
{
    public long ExpertsCommendID = -1;
    public static string NewsComments = "0";
    public string Title = "";
    public string ReadCount = "";
    public string Price = "";
    public string Content1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        ExpertsCommendID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("id"), 0);

        if (ExpertsCommendID <= 0)
        {
            PF.GoError(ErrorNumber.Unknow, "您访问的数据不存在，可能是参数错误或者内容已经被删除！", "Home_Room_ShowExpertsCommend");

            return;
        }

        tbExpertsCommendID.Text = ExpertsCommendID.ToString();

        if (!IsPostBack)
        {
            BindData();
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
        int ReturnValue = 0;
        string ReturnDescription = "";

        DataSet ds = null;

        DAL.Procedures.P_ExpertsCommendRead(ref ds, _Site.ID, long.Parse(tbExpertsCommendID.Text), _User.ID, ref ReturnValue, ref ReturnDescription);

        if ((ds != null) && (ds.Tables.Count > 0))
        {
            Label1.Visible = false;
            table1.Visible = true;
            if (ds.Tables[0].Rows.Count > 0)
            {
                ds.Tables[0].Columns.Add("Number1", System.Type.GetType("System.String"));
                ds.Tables[0].Columns.Add("Content1", System.Type.GetType("System.String"));

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    try
                    {
                        dr["Number1"] = dr["Number"];
                        dr["Content1"] = dr["Content"];
                    }
                    catch
                    {
                        dr["Number1"] = "";
                        dr["Content1"] = "";
                    }

                    ds.Tables[0].AcceptChanges();
                }

                Title = ds.Tables[0].Rows[0]["Title"].ToString();
                ReadCount = ds.Tables[0].Rows[0]["ReadCount"].ToString();
                Price =Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"].ToString()).ToString("F2");
                Number1.Text = ds.Tables[0].Rows[0]["Number1"].ToString();
                Content1 = ds.Tables[0].Rows[0]["Content1"].ToString();
            }
        }
        else
        {
            Label1.Visible = true;
            table1.Visible = false;
            Label1.Text = "<span style=\"font-size: 24px; font-weight: bold;color:red\">" + ReturnDescription + "</span>";
        }
    }
}
