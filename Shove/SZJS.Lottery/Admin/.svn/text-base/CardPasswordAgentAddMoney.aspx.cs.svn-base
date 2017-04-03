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

public partial class Admin_CardPasswordAgentAddMoney : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        isRequestLogin = true;
        RequestLoginPage = "Admin/CardPasswordAgentAddMoney.aspx";

        RequestCompetences = Competences.BuildCompetencesList(Competences.AddMoney);

        base.OnInit(e);
    }

    #endregion

    protected void btnGO_Click(object sender, EventArgs e)
    {
        if (tbUserName.Text.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入商户编号。");

            return;
        }
        long CardId = Shove._Convert.StrToLong(tbUserName.Text.Trim(), 0);
        double Money = Shove._Convert.StrToDouble(tbMoney.Text, 0);

        if (Money == 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入有效的金额。");

            return;
        }

        string Message = "手工充值";
        int ReturnValue = -1;
        string ReturnDescription = "";

        if (rb2.Checked)
        {
            Message += "，获得的奖励";
        }
        else if (rb3.Checked)
        {
            Message += "，购彩";
        }
        else if (rb4.Checked)
        {
            Message += "，预付款";
        }
        else if (rb5.Checked)
        {
            Message += "，转帐户";
        }

        if (tbMessage.Text.Trim() != "")
        {
            Message += "，" + tbMessage.Text.Trim();
        }

        if (DAL.Procedures.P_CardPasswordAgentAddMoney(CardId, Money, Message, ref ReturnValue, ref ReturnDescription) < 0)
        {
            PF.GoError(ErrorNumber.Unknow, ReturnDescription, "Admin_CardPasswordAgentAddMoney");
            return;
        }

        tbUserName.Text = "";
        tbMoney.Text = "";
        tbMessage.Text = "";

        Shove._Web.JavaScript.Alert(this, "为用户充值成功。");
    }
}
