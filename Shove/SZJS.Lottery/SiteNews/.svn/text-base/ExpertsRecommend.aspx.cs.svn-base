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
using LiuYi;

public partial class SiteNews_ExpertsRecommend : SitePageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RepEpisode.DataSource = GetNews("博彩秘笈", 10);
            RepEpisode.DataBind();
            RepExperts.DataSource = GetNews("专家须知", 10);
            RepExperts.DataBind();
            RepLotteryTerm.DataSource = GetNews("彩票术语", 10);
            RepLotteryTerm.DataBind();

            RepResearchCenter.DataSource = GetNews("研究中心", 10);
            RepResearchCenter.DataBind();

            RepRecommendAnalysis.DataSource = GetNews("推荐分析", 10);
            RepRecommendAnalysis.DataBind();
            RepSkills.DataSource = GetNews("购彩技巧大全", 10);
            RepSkills.DataBind();

            RepForecast.DataSource = GetNews("3D预测", 10);
            RepForecast.DataBind();

            GetFCExpertList();

            BindData();
        }
    }

    /// <summary>
    /// 绑定专家列表
    /// </summary>
    public void GetFCExpertList()
    {
        string Key = "FCExpert";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(Key);

        if (dt == null || dt.Rows.Count == 0)
        {
            dt = new DAL.Views.V_Experts().Open("top 6 UserName,UserID,LotteryName,LotteryID", "[ON]=1 and [isCanIssued]=1", "");

            if (dt != null)
            {
                dt.Columns.Add("ID", typeof(int));

                int i = 1;

                foreach (DataRow dr in dt.Rows)
                {
                    dr["ID"] = i;

                    i++;
                }
                Shove._Web.Cache.SetCache(Key, dt, 60);
            }
        }
        dTFCExpert.DataSource = dt;
        dTFCExpert.DataBind();
    }

    /// <summary>
    /// 获取彩票新闻
    /// </summary>
    /// <returns></returns>
    private DataTable GetNews(string TypeName, int top)
    {
        string sql = @"select top " + top + " ID,TypeID,Title,Content,TypeName from V_News where isShow = 1  and [TypeName] = '" + TypeName + "'order by isCommend,ID desc";
        DataTable dt = Shove.Database.MSSQL.Select(sql);
        return dt;
    }
    private void BindData()
    {
        string Key = "T_ExpertsCommends_T_Isuses";
        string sql = "select ab.ID,ab.UserName,aa.Name,ab.LotteryName,ab.Title,ab.ReadCount, ab.Price from(" +
"select a.ID, a.IsuseID,b.UserName, b.LotteryName,a.Title,a.ReadCount, a.Price From T_ExpertsCommends as a left join V_Experts as b on a.ExpertsID=b.id ) as ab left join T_Isuses as aa on ab.IsuseID=aa.ID";

        DataTable dt = Shove.Database.MSSQL.Select(sql);
        if (dt.Rows.Count > 0)
        {
            if (dt != null)
            {
                dt.Columns.Add("SequenceID", typeof(int));

                int i = 1;

                foreach (DataRow dr in dt.Rows)
                {
                    dr["SequenceID"] = i;

                    i++;
                    dt.AcceptChanges();
                }
                Shove._Web.Cache.SetCache(Key, dt, 600);
            }
            DataList1.DataSource = dt;
            PageString.InnerHtml = AccessHelper.GetDataListPageNum(dt, DataList1, 6, false, "red");
            DataList1.DataBind();
        }

    }

   
}
