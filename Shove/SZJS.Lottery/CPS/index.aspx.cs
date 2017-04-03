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

public partial class CPS_index : CpsPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RepNews.DataSource = BindNews("CPS新闻公告");
            RepNews.DataBind();
            RepZhi.DataSource = BindNews("CPS推广指南");
            RepZhi.DataBind();
            BindUsers();
            if (_User != null)
            {
                lbUserName.Text = "<strong>" + _User.Name + "</strong>";

                if (_User.Competences.CompetencesList != "")
                {
                    lbUserType.Text = "管理员";
                    trSupperManager.Visible = true;
                }
                else
                {
                    if (_User.cps.ID > 0)
                    {
                        trCpsLogin.Visible = true;

                        if (_User.cps.Type == 2)
                        {
                            lbUserType.Text = "代理商";
                        }
                    }
                    else
                    {
                        lbUserType.Text = "高级会员";

                        if (new DAL.Tables.T_CpsTrys().GetCount("HandleResult = 0 and UserID=" + _User.ID.ToString()) > 0)
                        {
                            trCheck.Visible = true;
                            lbUserType.Text = "代理商";
                        }
                        else
                        {
                            trApply.Visible = true;
                        }
                    }
                }

                NoLogin.Visible = false;
                Longining.Visible = true;
            }
            HttpCookie cookie = System.Web.HttpContext.Current.Request.Cookies["cookTBUSERNAME"];
            if (cookie != null && !cookie.Value.ToString().Equals(""))
            {
                tbUserName.Value = cookie.Value.ToString();
            }
            
        }

    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isRequestLogin = false;

        base.OnInit(e);
    }

    #endregion
    private DataTable BindNews(string key)
    {
        string Key = "CPS_Default_BindNews" + key;

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);

        if (dt == null)
        {
            string sql = @"select top 7 ID,Title,Content,TypeName from V_News where isShow = 1  and [TypeName] = '" + key + "'order by isCommend,ID desc";

            dt = Shove.Database.MSSQL.Select(sql);

            if (dt == null)
            {
                return null;
            }

            Shove._Web.Cache.SetCache(Key, dt, 600);
        }

        return dt;
    }

    private void BindUsers()
    {
        string Key = "CPS_Default_BindUsers";

        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);

        if (dt == null)
        {
            dt = new DAL.Tables.T_Users().Open("top 6 Name,Bonus", "Bonus > 0", "Bonus desc");
            Shove._Web.Cache.SetCache(Key, 600);
        }
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked==true)
        {
            Addcookie("cookTBUSERNAME", tbUserName.Value.Trim(), DateTime.Now.Add(TimeSpan.FromDays(7)));
        }
        else
        {
            HttpCookie cok = Request.Cookies["cookTBUSERNAME"];
            if (cok != null)
            {
                TimeSpan ts = new TimeSpan(-1, 0, 0, 0);
                cok.Expires = DateTime.Now.Add(ts);
            }

        }

        string ReturnDescription = "";
        int Result = new Login().LoginSubmit(this.Page, _Site, tbUserName.Value.Trim(), tbPwd.Value.Trim(), ref ReturnDescription);

        if (Result < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription, "Login.aspx", "top");

            return;
        }

        Response.Write("<script>window.top.location.href='index.aspx'</script>");
    }

    public static void Addcookie(string name, string content, DateTime dtime)
    {
       
         HttpContext.Current.Response.Cookies.Add(new HttpCookie(name, content));
         HttpContext.Current.Response.Cookies[name].Expires = dtime;
        
    }

    protected void imgbtnLogout_Click(object sender, EventArgs e)
    {
        if (_User != null)
        {
            string ReturnDescription = "";
            _User.Logout(ref ReturnDescription);
        }

        Response.Write("<script>window.top.location.href='index.aspx'</script>");
    }
}
