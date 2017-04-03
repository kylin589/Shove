using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Shove.Alipay;

public partial class tuan_Alipay_Send : SitePageBase
{

    public string Balance;
    public string UserName;
    public string BankName;
    public string Freeze;

    public double Money = 0;
    public double RealPayMoney = 0;
    SystemOptions so = new SystemOptions();
    public long BuyID = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        BuyID = Shove._Convert.StrToLong(Shove._Web.Utility.GetRequest("BuyID"), 0);

        if (_User != null)
        {
            DAL.Tables.T_Users us = new DAL.Tables.T_Users();
            us.Freeze.Value = 9;
            us.Update("ID=" + _User.ID);
            Balance = _User.Balance.ToString();
            UserName = _User.Name.ToString();
            Freeze = _User.Freeze.ToString() == "0" ? "9" : _User.Freeze.ToString();
        }
    }

    #region Web 窗体设计器生成的代码

    protected override void OnLoad(EventArgs e)
    {
        isRequestLogin = true;

        RequestLoginPage = this.Request.Url.AbsoluteUri;

        base.OnLoad(e);
    }

    #endregion

    protected void btnNext_Click(object sender, System.EventArgs e)
    {
        string Money = this.PayMoney.Text;

        if (Shove._Convert.StrToDouble(Money, 0) <= 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入正确的充值金额！再提交，谢谢！");
            return;
        }

        if (Shove._Convert.StrToDouble(Money, 0) < 30)
        {
            Shove._Web.JavaScript.Alert(this.Page, "存入金额最少30元, 请输入正确的充值金额！再提交，谢谢！");
            return;
        }

        lbPayMoney.Text = this.PayMoney.Text;

        if (radZFB.Checked)
        {
            BankName = "zfb";
            hdBankCode.Value = "alipay";
        }
        //else if (radyeepay.Checked)
        //{
        //    BankName = "yeepay";
        //    hdBankCode.Value = "0";
        //}
        //else if (rad99Bill.Checked)//快钱
        //{
        //    BankName = "99Bill";
        //    hdBankCode.Value = "0";
        //}
        else if (radICBCB2C.Checked)
        {
            BankName = "hsyh";
            hdBankCode.Value = "ICBCB2C";
        }
        else if (radGDB.Checked)
        {
            BankName = "gdfzyh";
            hdBankCode.Value = "GDB";
        }
        else if (radGDYH.Checked)
        {
            BankName = "gdyh";
            hdBankCode.Value = "CEBBANK";
        }
        else if (radCOMM.Checked)
        {
            BankName = "jtyh";
            hdBankCode.Value = "COMM";
        }
        else if (radABC.Checked)
        {
            BankName = "nyyh";
            hdBankCode.Value = "ABC";
        }
        else if (radSPDB.Checked)
        {
            BankName = "shpd";
            hdBankCode.Value = "SPDB";
        }
        else if (radSDB.Checked)
        {
            BankName = "szfzyh";
            hdBankCode.Value = "SDB";
        }
        else if (radCIB.Checked)
        {
            BankName = "xyyh";
            hdBankCode.Value = "CIB";
        }
        else if (radCMBC.Checked)
        {
            BankName = "zgms";
            hdBankCode.Value = "CMBC";
        }
        else if (radBOCB2C.Checked)
        {
            BankName = "zgyh";
            hdBankCode.Value = "BOCB2C";
        }
        else if (radCMB.Checked)
        {
            BankName = "zsyhj";
            hdBankCode.Value = "CMB";
        }
        else if (radBCCBEB.Checked)
        {
            BankName = "bjyh";
            hdBankCode.Value = "1032";
        }
        else if (radCCB.Checked)
        {
            BankName = "jsyh";
            hdBankCode.Value = "1003";
        }
        if (hdBankCode.Value == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请选择银行，谢谢！");
            return;
        }
        if (Shove._Convert.StrToInt(hdBankCode.Value, -1) == -1)
        {
            hlOK.NavigateUrl = "Send2.aspx?PayMoney=" + Money + "&bankPay=" + this.hdBankCode.Value + "&BuyID=" + BuyID.ToString();
        }

        //else if (BankName == "99Bill")//快钱
        //{
        //    hlOK.NavigateUrl = "../99Bill/Send.aspx?PayMoney=" + Money + "&bankPay=" + this.hdBankCode.Value + "&BuyID=" + BuyID.ToString();
        //}
        //else
        //{
        //    hlOK.NavigateUrl = "../YeePay/Send.aspx?PayMoney=" + Money + "&bankPay=" + this.hdBankCode.Value + "&BuyID=" + BuyID.ToString();
        //}

        pnlFirst.Visible = false;
        pnlSecond.Visible = true;
    }
    protected void lbReturn_Click(object sender, EventArgs e)
    {
        pnlFirst.Visible = true;
        pnlSecond.Visible = false;
    }
}
