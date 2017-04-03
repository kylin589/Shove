﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Shove.Web.UI;
using System.Text;

/// <summary>
///TrendChartPageBase 的摘要说明
/// </summary>
public class TrendChartPageBase : System.Web.UI.Page
{
    public Sites _Site;
    public int CacheSeconds = 600;         // 缺省缓存 1 小时
    public DateTime StartTime;
    public string PageUrl;

    public TrendChartPageBase()
    {
        StartTime = DateTime.Now;
    }

    protected override void OnLoad(EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //为 CPS 商家保存第一次访问的二级域名
            new FirstUrl().Save();
        }

        #region 缓存

        if (CacheSeconds > 0)
        {
            this.Response.Cache.SetExpires(DateTime.Now.AddSeconds(CacheSeconds));
            this.Response.Cache.SetCacheability(HttpCacheability.Server);
            this.Response.Cache.VaryByParams["*"] = true;
            this.Response.Cache.SetValidUntilExpires(true);
            this.Response.Cache.SetVaryByCustom("SitePage");
        }

        #endregion

        _Site = new Sites()[1];

        if (_Site == null)
        {
            PF.GoError(ErrorNumber.Unknow, "域名无效，限制访问", this.GetType().FullName);

            return;
        }

        PageUrl = this.Request.Url.AbsoluteUri;

        base.OnLoad(e);
    }

    public override void Dispose()
    {
        TimeSpan ts = DateTime.Now - StartTime;

        if (ts.Seconds >= 10)
        {
            new Log("Page").Write("耗时：" + ts.Minutes.ToString("00") + "分" + ts.Seconds.ToString("00") + "秒" + ts.Milliseconds.ToString("000") + "毫秒，" + PageUrl);
        }

        base.Dispose();
    }
}
