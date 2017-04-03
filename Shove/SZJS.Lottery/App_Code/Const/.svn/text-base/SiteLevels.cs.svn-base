using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// SiteLevels 的摘要说明
/// </summary>
public class SiteLevels
{
    /// <summary>
    /// 总站
    /// </summary>
    public const short MasterSite = 1;
    /// <summary>
    /// 总代理
    /// </summary>
    public const short SurrogateAdvSite = 2;
    /// <summary>
    /// 代理
    /// </summary>
    public const short SurrogateSite = 3;
    /// <summary>
    /// 网店
    /// </summary>
    public const short ShopSite = 4;

    public class LevelName
    {
        /// <summary>
        /// 总站
        /// </summary>
        public const string MasterSite = "总站";
        /// <summary>
        /// 总代理
        /// </summary>
        public const string SurrogateAdvSite = "总代理";
        /// <summary>
        /// 代理
        /// </summary>
        public const string SurrogateSite = "代理";
        /// <summary>
        /// 网店
        /// </summary>
        public const string ShopSite = "网店";
    }

    public static string GetSiteLevelName(short Level)
    {
        return ((Level == MasterSite) ? LevelName.MasterSite : ((Level == SurrogateAdvSite) ? LevelName.SurrogateAdvSite : ((Level == SurrogateSite) ? LevelName.SurrogateSite : LevelName.ShopSite)));
    }

    public SiteLevels()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
}
