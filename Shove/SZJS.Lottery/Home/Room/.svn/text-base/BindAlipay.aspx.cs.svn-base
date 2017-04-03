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

public partial class Home_Room_BindAlipay : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        labName.Text = _User.Name;

        if (_User.isAlipayNameValided)
        {

            labAlipayAccountOld.Text = GetAlipayNam();
        }
        else
        {
            labBindState.Text = "(未绑定)";
        }

        if (_User.SecurityQuestion.StartsWith("自定义问题|"))
        {
            lbQuestion.Text = _User.SecurityQuestion.Remove(0, 6);
        }
        else
        {
            lbQuestion.Text = _User.SecurityQuestion;
        }

        if (lbQuestion.Text == "")
        {
            lbQuestionInfo.Text = "设置安全保护问题";
        }
        else
        {
            lbQuestionInfo.Text = "修改安全保护问题";
        }
    }

    private string GetAlipayNam()
    {
        string strAlipay = "";
        string strAliValue = "**********************";
        int iLength = _User.AlipayName.IndexOf("@");
        int iLengthSum = _User.AlipayName.Length;
        int iLengthShow = iLengthSum - iLength;
        try
        {
            if (_User.AlipayName.IndexOf("@") == -1)
            {
                strAlipay = _User.AlipayName.Substring(0, 3) + "********";
            }
            else
            {

                strAlipay = strAliValue.Substring(0, iLength - 1) + _User.AlipayName.Substring(_User.AlipayName.IndexOf("@") - 1, iLengthShow + 1);
            }
        }
        catch
        {
            strAlipay = "";
        }
        return strAlipay;

    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (_User == null)
        {
            return;
        }

        if (_User.RealityName == "")
        {
            Response.Write("<script type='text/javascript'>alert('请完善您的基本资料，真实姓名不能为空，谢谢！');window.location='UserEdit.aspx?FromUrl=BindAlipay.aspx';</script>");
        }

        if (this.lbQuestion.Text == "")
        {
            Response.Write("<script type='text/javascript'>alert('为了您的账户安全，请先设置安全保护问题，谢谢！');window.location='SafeSet.aspx?FromUrl=BindAlipay.aspx';</script>");
        }

        if (this.tbRealityName.Text != _User.RealityName)
        {
            Shove._Web.JavaScript.Alert(this.Page, "请核实您的真实姓名，谢谢！");
            return;
        }
        if (tbMyA.Text.Trim() != _User.SecurityAnswer)
        {
            Shove._Web.JavaScript.Alert(this.Page, "安全保护问题回答错误。");

            return;
        }
        Shove._Web.Cache.SetCache("BindAlipay_" + _User.ID, _User.ID.ToString());
        Response.Redirect("Login.aspx");

    }

    /// <summary>
    ///当天注册会员前12名，免费送2元彩金，同一个支付宝账号只能领取一次。
    /// </summary>
    /// <param name="UserID"></param>
    private void Reward(long UserID, string AlipayName)
    {
        int AgentID = 1016;

        if (UserID < 1 || AlipayName == "")
        {
            return;
        }

        DataTable dt = Shove.Database.MSSQL.Select("select * from T_ActivitiesMytv365 where Convert(varchar(10), DateTime, 120) = '" + DateTime.Now.ToString("yyyy-MM-dd") + "'", new Shove.Database.MSSQL.Parameter[0]);//new DAL.Tables.T_TomActivities().Open("", Condition, "");

        if (dt == null)
        {
            return;
        }

        DataRow[] dr = dt.Select("AlipayName = '" + AlipayName + "'");

        int a = 0;
        //无重复的，并且在前12
        if (dr.Length == 0 && dt.Rows.Count < 12)
        {
            string ReturnDescription = "";

            CardPassword cp = new CardPassword();

            long CardPasswordID = (long)cp.Add(AgentID, 1, 2, 1, ref ReturnDescription);

            if (CardPasswordID < 0)
            {
                new Log("System").Write("添加卡密失败。" + ReturnDescription + this.GetType().FullName + "(150)");

                return;
            }

            int i = cp.Use(cp.GenNumber(PF.GetCallCert(), AgentID, CardPasswordID), 1, UserID, ref ReturnDescription);

            if (i < 0)
            {
                new Log("System").Write("卡密使用失败。" + ReturnDescription + this.GetType().FullName + "(159)");

                return;
            }

            a = 1;

            string sql = "insert into T_ActivitiesMytv365 (IsReward1,UserID,AlipayName)values(" + a.ToString() + "," + UserID.ToString() + ",'" + AlipayName + "')";

            int result = Shove.Database.MSSQL.ExecuteNonQuery(sql, new Shove.Database.MSSQL.Parameter[0]);

            if (result < 0)
            {
                new Log("System").Write("写入 T_ActivitiesMytv365 失败。" + this.GetType().FullName + "(178)");

                return;
            }
        }
    }
}
