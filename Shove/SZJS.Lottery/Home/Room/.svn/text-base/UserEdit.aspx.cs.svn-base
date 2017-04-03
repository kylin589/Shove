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

public partial class Home_Room_UserEdit : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AjaxPro.Utility.RegisterTypeForAjax(typeof(Home_Room_UserEdit), this.Page);
        if (!IsPostBack)
        {
            if (User != null)
            {
                if (_User.SecurityQuestion == "")
                {
                    divNewQF.Visible = true;
                    divAnswer.Visible = false;
                }
                else
                {
                    divNewQF.Visible = false;
                    divAnswer.Visible = true;
                }
            }

            BindData();
            ddlQuestion.DataSource = DataCache.SecurityQuestions;
            ddlQuestion.DataBind();
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
        lbUserName.Text = "*".PadLeft(_User.Name.Length - 1, '*') + _User.Name.Substring(_User.Name.Length - 1);
        if (_User.RealityName != "")
        {
            this.tbRealityName.Visible = false;
            this.lbRealityName.Visible = true;
            this.lbRealityName.Text = "*".PadLeft(_User.RealityName.Length - 1, '*') + _User.RealityName.Substring(_User.RealityName.Length - 1);
            this.lbIsRealityNameValided.Text = "已绑定";
        }
        else
        {
            this.tbRealityName.Visible = true;
            this.lbRealityName.Visible = false;
            this.tbRealityName.Text = "***";
            this.lbIsRealityNameValided.Text = "未绑定";
        }

        ddlCity.City_id = _User.CityID;
        rbSexM.Checked = (_User.Sex == "男");
        rbSexW.Checked = (_User.Sex != "男");
        tbBirthday.Text = _User.BirthDay.ToShortDateString();

        tbAddress.Text = _User.Address;
        tbEmail.Text = _User.Email;

        try
        {
            if (_User.isMobileValided)
            {
                lbMobile.Text = _User.Mobile.Substring(0, 3) + "*****" + _User.Mobile.Substring(8, 3);
            }
        }
        catch
        { }

        DataTable dt = new DAL.Tables.T_Users().Open("IsQQValided", "ID=" + _User.ID.ToString(), "");

        if (dt == null || dt.Rows.Count == 0)
        {
            return;
        }

        bool IsQQValided = Shove._Convert.StrToBool(dt.Rows[0]["IsQQValided"].ToString(), false);

        if (IsQQValided)
        {
            lbQQ.Text = _User.QQ.Length > 3 ? (_User.QQ.Substring(0, 3) + "********") : _User.QQ;
        }

        lbIsEmailValided.Text = (_User.isEmailValided ? "<font color='red'>已激活</font>" : "未激活") + "&nbsp;&nbsp;<a href='UserEmailBind.aspx'>申请激活或修改激活</a>";
        labIsMobileVailded.Text = (_User.isMobileValided ? "<font color='red'>已绑定</font>" : "未绑定") + "&nbsp;&nbsp;<a href='UserMobileBind.aspx'>申请绑定或修改绑定</a>";
        lbQQValided.Text = (IsQQValided ? "<font color='red'>已绑定</font>" : "未绑定") + "&nbsp;&nbsp;<a href='UserQQBind.aspx'>申请绑定或修改绑定</a>";

        dt = new DAL.Tables.T_Banks().Open("", "", "[Order]");

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

        try
        {
            if (_User.IDCardNumber.Length == 15)
            {
                lbIdCardNumber.Visible = true;
                tbIdIDCardNumber.Visible = false;
                lbIdCardNumber.Text = _User.IDCardNumber.Substring(0, 6) + "*****" + _User.IDCardNumber.Substring(10, 4);
                lbIsIdCardNumberValided.Text = "已绑定";

            }
            else
            {
                lbIdCardNumber.Visible = true;
                tbIdIDCardNumber.Visible = false;
                lbIdCardNumber.Text = _User.IDCardNumber.Substring(0, 6) + "********" + _User.IDCardNumber.Substring(14, 4);
                lbIsIdCardNumberValided.Text = "已绑定";
            }
        }
        catch
        {
            lbIdCardNumber.Visible = false;
            tbIdIDCardNumber.Visible = true;
            lbIdCardNumber.Text = "";
            lbIsIdCardNumberValided.Text = "未绑定";
        }
        hdIDCardNumber.Value = lbIdCardNumber.Text;
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (_User == null)
        {
            return;
        }
        if (lbQuestion.Visible)
        {
            if (this.lbQuestion.Text == "")
            {
                Response.Write("<script type='text/javascript'>alert('为了您的账户安全，请先设置安全保护问题，谢谢！');window.location='SafeSet.aspx?FromUrl=UserEdit.aspx';</script>");

                return;
            }
        }

        if (_User.RealityName == "" && this.tbRealityName.Text.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入真实姓名。");
            return;
        }


        if (tbIdIDCardNumber.Visible)
        {
            string tempIdCardNumber = this.tbIdIDCardNumber.Text;
            if (!Shove._String.Valid.isIDCardNumber(tempIdCardNumber) && !Shove._String.Valid.isIDCardNumber_Hongkong(tempIdCardNumber) &&
                !Shove._String.Valid.isIDCardNumber_Macau(tempIdCardNumber) && !Shove._String.Valid.isIDCardNumber_Singapore(tempIdCardNumber)
                && !Shove._String.Valid.isIDCardNumber_Taiwan(tempIdCardNumber))
            {
                Shove._Web.JavaScript.Alert(this.Page, "身份证号码输入有误！");
                return;
            }
        }

        if (tbEmail.Text.Trim() == "")
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入电子邮件地址。");
            tbEmail.Focus();

            return;
        }

        if (!Shove._String.Valid.isEmail(tbEmail.Text.Trim()))
        {
            Shove._Web.JavaScript.Alert(this.Page, "电子邮件地址格式不正确。");
            tbEmail.Focus();

            return;
        }

        if (tbMyA.Text.Trim() != _User.SecurityAnswer)
        {
            Shove._Web.JavaScript.Alert(this.Page, "安全保护问题回答错误。");

            return;
        }
        if (this.divNewQF.Visible)
        {
            string Answer = Shove._Web.Utility.FilteSqlInfusion(tbAnswer.Text);

            if (Answer.Trim() == "")
            {
                Shove._Web.JavaScript.Alert(this.Page, "请输入安全问题，谢谢！");

                return;
            }
        }

        Users tu = new Users(_Site.ID);
        _User.Clone(tu);

        if (this.tbRealityName.Visible)
        {
            _User.RealityName = Shove._Web.Utility.FilteSqlInfusion(this.tbRealityName.Text);
        }

        if (this.divNewQF.Visible)
        {
            _User.SecurityQuestion = this.ddlQuestion.SelectedItem.Text.ToString().Trim();
            _User.SecurityAnswer = this.tbAnswer.Text.Trim();
            object resUpdate = Shove.Database.MSSQL.ExecuteNonQuery("update T_Users set SecurityQuestion='" + this.ddlQuestion.SelectedItem.Text.ToString().Trim() + "' , SecurityAnswer='" + Shove._Web.Utility.FilteSqlInfusion(this.tbAnswer.Text.Trim()) + "' where ID=" + _User.ID.ToString() + "");
            if (resUpdate == null)
            {
                return;
            }

        }
        if (tbIdIDCardNumber.Visible)
        {
            _User.IDCardNumber = Shove._Web.Utility.FilteSqlInfusion(this.tbIdIDCardNumber.Text);

            //根据当前的身份证号查询此身份证号的历史用户的CPSID是否为"来宝商家"CSPID-839,是,则把当前会员的CPSID也置为宝商家CSPID-839
            if (this.tbIdIDCardNumber.Text.Trim() != "")
            {
                object resObj = Shove.Database.MSSQL.ExecuteScalar("select 1 from T_Users where IDCardNumber='" + Shove._Web.Utility.FilteSqlInfusion(this.tbIdIDCardNumber.Text) + "' and CpsID=839 ", new Shove.Database.MSSQL.Parameter[0]);
                if (resObj != null && _User.CpsID != 839)
                {
                    _User.CpsID = 839;
                }
            }

        }


        _User.CityID = ddlCity.City_id;
        _User.Sex = rbSexM.Checked ? "男" : (rbSexW.Checked ? "女" : "");
        _User.BirthDay = Shove._Convert.StrToDateTime(tbBirthday.Text.Trim(), "1980-1-1");
        _User.Address = tbAddress.Text.Trim();

        if (_User.Email != Shove._Convert.ToDBC(tbEmail.Text).Trim()) //改变了邮箱，需要重新验证
        {
            _User.isEmailValided = false;
        }

        _User.Email = Shove._Convert.ToDBC(tbEmail.Text).Trim();

        string ReturnDescription = "";

        int Result = _User.EditByID(ref ReturnDescription);

        if (Result < 0)
        {
            new Log("Users").Write("修改用户基本资料失败：" + ReturnDescription);
            tu.Clone(_User);
            Shove._Web.JavaScript.Alert(this.Page, ReturnDescription);

            return;
        }


        string FromUrl = Shove._Web.Utility.GetRequest("FromUrl");
        if (FromUrl == "")
        {
            FromUrl = "UserEdit.aspx";
        }
        Shove._Web.JavaScript.Alert(this.Page, "用户资料已经保存成功。", FromUrl);
    }

    protected void ddlQuestion_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlQuestion.SelectedValue == "自定义问题")
        {
            trMQ.Visible = true;
        }
        else
        {
            trMQ.Visible = false;
        }
    }
}
