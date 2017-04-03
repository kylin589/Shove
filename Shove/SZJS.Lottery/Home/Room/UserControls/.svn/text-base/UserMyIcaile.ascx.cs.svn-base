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
using System.Data;
using Shove.Database;

public partial class Home_Room_UserControls_UserMyIcaile : UserControlBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (_User != null)
            {
                BindData();
            }
        }
    }
    private void BindData()
    {

        string sql = "select ID from T_ExpertsTrys where UserID = " + _User.ID + " and HandleResult = 1";
        DataTable dt = MSSQL.Select(sql);
        if (dt == null || dt.Rows.Count <= 0)
        {
            this.Exper1.Visible = false;
            this.Exper2.Visible = false;
            this.Exper3.Visible = false;
        }
        else
        {
            this.Exper1.Visible = true;
            this.Exper2.Visible = true;
            this.Exper3.Visible = true;
        }
    }
}
