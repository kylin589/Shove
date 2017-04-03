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

public partial class Admin_Options : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindData();

            btnOK.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.Options));
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.Options,Competences.QueryData);

        base.OnInit(e);
    }

    #endregion

    private void BindData()
    {
        tbForumUrl.Text = _Site.SiteOptions["Opt_ForumUrl"].ToString("");

        Shove.ControlExt.SetDownListBoxTextFromValue(ddlMobileCheckCharset, _Site.SiteOptions["Opt_MobileCheckCharset"].ToString(""));
        tbMobileCheckStringLength.Text = _Site.SiteOptions["Opt_MobileCheckStringLength"].ToString("");
        Shove.ControlExt.SetDownListBoxTextFromValue(ddlSMSPayType, _Site.SiteOptions["Opt_SMSPayType"].ToString(""));
        tbSMSPrice.Text = _Site.SiteOptions["Opt_SMSPrice"].ToString("");

        Shove.ControlExt.SetDownListBoxTextFromValue(ddlCheckCodeCharset, _Site.SiteOptions["Opt_CheckCodeCharset"].ToString(""));
        cbisUseCheckCode.Checked = _Site.SiteOptions["Opt_isUseCheckCode"].ToBoolean(true);

        cbisWriteLog.Checked = _Site.SiteOptions["Opt_isWriteLog"].ToBoolean(true);

        tbInitiateSchemeLimitLowerScaleMoney.Text = _Site.SiteOptions["Opt_InitiateSchemeLimitLowerScaleMoney"].ToString("");
        tbInitiateSchemeLimitLowerScale.Text = _Site.SiteOptions["Opt_InitiateSchemeLimitLowerScale"].ToString("");
        tbInitiateSchemeLimitUpperScaleMoney.Text = _Site.SiteOptions["Opt_InitiateSchemeLimitUpperScaleMoney"].ToString("");
        tbInitiateSchemeLimitUpperScale.Text = _Site.SiteOptions["Opt_InitiateSchemeLimitUpperScale"].ToString("");

        tbInitiateSchemeBonusScale.Text = _Site.SiteOptions["Opt_InitiateSchemeBonusScale"].ToString("");
        tbInitiateSchemeMinBuyScale.Text = _Site.SiteOptions["Opt_InitiateSchemeMinBuyScale"].ToString("");
        tbInitiateSchemeMinBuyAndAssureScale.Text = _Site.SiteOptions["Opt_InitiateSchemeMinBuyAndAssureScale"].ToString("");
        tbInitiateSchemeMaxNum.Text = _Site.SiteOptions["Opt_InitiateSchemeMaxNum"].ToString("");
        tbInitiateFollowSchemeMaxNum.Text = _Site.SiteOptions["Opt_InitiateFollowSchemeMaxNum"].ToString("");
        tbQuashSchemeMaxNum.Text = _Site.SiteOptions["Opt_QuashSchemeMaxNum"].ToString("");
        cbFullSchemeCanQuash.Checked = _Site.SiteOptions["Opt_FullSchemeCanQuash"].ToBoolean(true);
        tbSchemeMinMoney.Text = _Site.SiteOptions["Opt_SchemeMinMoney"].ToString("");
        tbSchemeMaxMoney.Text = _Site.SiteOptions["Opt_SchemeMaxMoney"].ToString("");

        tbFirstPageUnionBuyMaxRows.Text = _Site.SiteOptions["Opt_FirstPageUnionBuyMaxRows"].ToString("");
        cbisFirstPageUnionBuyWithAll.Checked = _Site.SiteOptions["Opt_isFirstPageUnionBuyWithAll"].ToBoolean(true);
        tbMaxShowLotteryNumberRows.Text = _Site.SiteOptions["Opt_MaxShowLotteryNumberRows"].ToString("");
        tbLotteryCountOfMenuBarRow.Text = _Site.SiteOptions["Opt_LotteryCountOfMenuBarRow"].ToString("");

        cbisBuyValidPasswordAdv.Checked = _Site.SiteOptions["Opt_isBuyValidPasswordAdv"].ToBoolean(true);

        tbScoringOfSelfBuy.Text = _Site.SiteOptions["Opt_ScoringOfSelfBuy"].ToString("");
        tbScoringOfCommendBuy.Text = _Site.SiteOptions["Opt_ScoringOfCommendBuy"].ToString("");
        tbScoringExchangeRate.Text = _Site.SiteOptions["Opt_ScoringExchangeRate"].ToString("");
        cbScoring_Status_ON.Checked = _Site.SiteOptions["Opt_Scoring_Status_ON"].ToBoolean(true);

        tbSchemeChatRoom_StopChatDaysAfterOpened.Text = _Site.SiteOptions["Opt_SchemeChatRoom_StopChatDaysAfterOpened"].ToString("");
        tbSchemeChatRoom_MaxChatNumberOf.Text = _Site.SiteOptions["Opt_SchemeChatRoom_MaxChatNumberOf"].ToString("");

        tbPromotionMemberBonusScale.Text = _Site.SiteOptions["Opt_PromotionMemberBonusScale"].ToString("");
        tbPromotionSiteBonusScale.Text = _Site.SiteOptions["Opt_PromotionSiteBonusScale"].ToString("");
        cbCps_Status_ON.Checked = _Site.SiteOptions["Opt_Cps_Status_ON"].ToBoolean(true);
        cbPromotion_Status_ON.Checked = _Site.SiteOptions["Opt_Promotion_Status_ON"].ToBoolean(true);
        tbCpsBonusScale.Text = _Site.SiteOptions["Opt_CpsBonusScale"].ToString("");

        tbPageTitle.Text = _Site.SiteOptions["Opt_PageTitle"].ToString("");
        tbPageKeywords.Text = _Site.SiteOptions["Opt_PageKeywords"].ToString("");

        cbisShowFloatAD.Checked = _Site.SiteOptions["Opt_isShowFloatAD"].ToBoolean(true);
        cbMemberSharing_Alipay_Status_ON.Checked = _Site.SiteOptions["Opt_MemberSharing_Alipay_Status_ON"].ToBoolean(true);

        tbBettingStationName.Text = _Site.SiteOptions["Opt_BettingStationName"].ToString("");
        tbBettingStationNumber.Text = _Site.SiteOptions["Opt_BettingStationNumber"].ToString("");
        tbBettingStationAddress.Text = _Site.SiteOptions["Opt_BettingStationAddress"].ToString("");
        tbBettingStationTelephone.Text = _Site.SiteOptions["Opt_BettingStationTelephone"].ToString("");
        tbBettingStationContactPreson.Text = _Site.SiteOptions["Opt_BettingStationContactPreson"].ToString("");
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (Shove._Convert.StrToDouble(tbInitiateSchemeBonusScale.Text, 0) > 1 || Shove._Convert.StrToDouble(tbInitiateSchemeBonusScale.Text, 0) < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "方案制作佣金设置有错误，设置范围是( 0 - 1 ) 例如 0.03　！");
            return;
        }

        if (Shove._Convert.StrToDouble(tbPromotionMemberBonusScale.Text, 0) > 1 || Shove._Convert.StrToDouble(tbPromotionMemberBonusScale.Text, 0) < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "推广会员佣金设置有错误，设置范围是( 0 - 1 ) 例如 0.03　！");
            return;
        }

        if (Shove._Convert.StrToDouble(tbPromotionSiteBonusScale.Text, 0) > 1 || Shove._Convert.StrToDouble(tbPromotionSiteBonusScale.Text, 0) < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "推广站长佣金设置有错误，设置范围是( 0 - 1 ) 例如 0.03　！");
            return;
        }

        if (Shove._Convert.StrToDouble(tbCpsBonusScale.Text, 0) > 1 || Shove._Convert.StrToDouble(tbCpsBonusScale.Text, 0) < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "联盟推广佣金比例设置有错误，设置范围是( 0 - 1 ) 例如 0.03　！");
            return;
        }

        try
        {
            _Site.SiteOptions["Opt_ForumUrl"] = new OptionValue(tbForumUrl.Text.Trim());

            _Site.SiteOptions["Opt_MobileCheckCharset"] = new OptionValue(ddlMobileCheckCharset.SelectedValue);
            _Site.SiteOptions["Opt_MobileCheckStringLength"] = new OptionValue(Shove._Convert.StrToShort(tbMobileCheckStringLength.Text, 6));
            _Site.SiteOptions["Opt_SMSPayType"] = new OptionValue(ddlSMSPayType.SelectedValue);
            _Site.SiteOptions["Opt_SMSPrice"] = new OptionValue(Shove._Convert.StrToDouble(tbSMSPrice.Text, 0));

            _Site.SiteOptions["Opt_CheckCodeCharset"] = new OptionValue(ddlCheckCodeCharset.SelectedValue);
            _Site.SiteOptions["Opt_isUseCheckCode"] = new OptionValue(cbisUseCheckCode.Checked);

            _Site.SiteOptions["Opt_isWriteLog"] = new OptionValue(cbisWriteLog.Checked);

            _Site.SiteOptions["Opt_InitiateSchemeLimitLowerScaleMoney"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeLimitLowerScaleMoney.Text, 0));
            _Site.SiteOptions["Opt_InitiateSchemeLimitLowerScale"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeLimitLowerScale.Text, 0));
            _Site.SiteOptions["Opt_InitiateSchemeLimitUpperScaleMoney"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeLimitUpperScaleMoney.Text, 0));
            _Site.SiteOptions["Opt_InitiateSchemeLimitUpperScale"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeLimitUpperScale.Text, 0));

            _Site.SiteOptions["Opt_InitiateSchemeBonusScale"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeBonusScale.Text, 0));
            _Site.SiteOptions["Opt_InitiateSchemeMinBuyScale"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeMinBuyScale.Text, 0));
            _Site.SiteOptions["Opt_InitiateSchemeMinBuyAndAssureScale"] = new OptionValue(Shove._Convert.StrToDouble(tbInitiateSchemeMinBuyAndAssureScale.Text, 0));
            _Site.SiteOptions["Opt_InitiateSchemeMaxNum"] = new OptionValue(Shove._Convert.StrToShort(tbInitiateSchemeMaxNum.Text, 1000));
            _Site.SiteOptions["Opt_InitiateFollowSchemeMaxNum"] = new OptionValue(Shove._Convert.StrToShort(tbInitiateFollowSchemeMaxNum.Text, 1));
            _Site.SiteOptions["Opt_QuashSchemeMaxNum"] = new OptionValue(Shove._Convert.StrToShort(tbQuashSchemeMaxNum.Text, 3));
            _Site.SiteOptions["Opt_FullSchemeCanQuash"] = new OptionValue(cbFullSchemeCanQuash.Checked);
            _Site.SiteOptions["Opt_SchemeMinMoney"] = new OptionValue(Shove._Convert.StrToDouble(tbSchemeMinMoney.Text, 2));
            _Site.SiteOptions["Opt_SchemeMaxMoney"] = new OptionValue(Shove._Convert.StrToDouble(tbSchemeMaxMoney.Text, 300000));

            _Site.SiteOptions["Opt_FirstPageUnionBuyMaxRows"] = new OptionValue(Shove._Convert.StrToShort(tbFirstPageUnionBuyMaxRows.Text, 10));
            _Site.SiteOptions["Opt_isFirstPageUnionBuyWithAll"] = new OptionValue(cbisFirstPageUnionBuyWithAll.Checked);
            _Site.SiteOptions["Opt_MaxShowLotteryNumberRows"] = new OptionValue(Shove._Convert.StrToShort(tbMaxShowLotteryNumberRows.Text, 5));
            _Site.SiteOptions["Opt_LotteryCountOfMenuBarRow"] = new OptionValue(Shove._Convert.StrToShort(tbLotteryCountOfMenuBarRow.Text, 8));

            _Site.SiteOptions["Opt_isBuyValidPasswordAdv"] = new OptionValue(cbisBuyValidPasswordAdv.Checked);

            _Site.SiteOptions["Opt_ScoringOfSelfBuy"] = new OptionValue(Shove._Convert.StrToDouble(tbScoringOfSelfBuy.Text, 0));
            _Site.SiteOptions["Opt_ScoringOfCommendBuy"] = new OptionValue(Shove._Convert.StrToDouble(tbScoringOfCommendBuy.Text, 0));
            _Site.SiteOptions["Opt_ScoringExchangeRate"] = new OptionValue(Shove._Convert.StrToDouble(tbScoringExchangeRate.Text, 100));
            _Site.SiteOptions["Opt_Scoring_Status_ON"] = new OptionValue(cbScoring_Status_ON.Checked);

            _Site.SiteOptions["Opt_SchemeChatRoom_StopChatDaysAfterOpened"] = new OptionValue(Shove._Convert.StrToShort(tbSchemeChatRoom_StopChatDaysAfterOpened.Text, 0));
            _Site.SiteOptions["Opt_SchemeChatRoom_MaxChatNumberOf"] = new OptionValue(Shove._Convert.StrToShort(tbSchemeChatRoom_MaxChatNumberOf.Text, 200));

            _Site.SiteOptions["Opt_PromotionMemberBonusScale"] = new OptionValue(Shove._Convert.StrToDouble(tbPromotionMemberBonusScale.Text, 0));
            _Site.SiteOptions["Opt_PromotionSiteBonusScale"] = new OptionValue(Shove._Convert.StrToDouble(tbPromotionSiteBonusScale.Text, 0));
            _Site.SiteOptions["Opt_Cps_Status_ON"] = new OptionValue(cbCps_Status_ON.Checked);
            _Site.SiteOptions["Opt_Promotion_Status_ON"] = new OptionValue(cbPromotion_Status_ON.Checked);
            _Site.SiteOptions["Opt_CpsBonusScale"] = new OptionValue(Shove._Convert.StrToDouble(tbCpsBonusScale.Text, 0));

            _Site.SiteOptions["Opt_PageTitle"] = new OptionValue(tbPageTitle.Text);
            _Site.SiteOptions["Opt_PageKeywords"] = new OptionValue(tbPageKeywords.Text);

            _Site.SiteOptions["Opt_isShowFloatAD"] = new OptionValue(cbisShowFloatAD.Checked);
            _Site.SiteOptions["Opt_MemberSharing_Alipay_Status_ON"] = new OptionValue(cbMemberSharing_Alipay_Status_ON.Checked);

            _Site.SiteOptions["Opt_BettingStationName"] = new OptionValue(tbBettingStationName.Text);
            _Site.SiteOptions["Opt_BettingStationNumber"] = new OptionValue(tbBettingStationNumber.Text);
            _Site.SiteOptions["Opt_BettingStationAddress"] = new OptionValue(tbBettingStationAddress.Text);
            _Site.SiteOptions["Opt_BettingStationTelephone"] = new OptionValue(tbBettingStationTelephone.Text);
            _Site.SiteOptions["Opt_BettingStationContactPreson"] = new OptionValue(tbBettingStationContactPreson.Text);
        }
        catch (Exception exception)
        {
            PF.GoError(ErrorNumber.Unknow, exception.Message, this.GetType().BaseType.FullName);

            return;
        }

        Shove._Web.JavaScript.Alert(this.Page, "系统参数已经保存成功。");
    }
}
