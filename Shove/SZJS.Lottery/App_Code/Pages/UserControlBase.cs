using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///UserControlBase 的摘要说明
/// </summary>
public class UserControlBase : System.Web.UI.UserControl
{
    public Sites _Site;
    public Users _User;

    protected override void OnLoad(EventArgs e)
    {

        #region 获取站点

        _Site = new Sites()[1];

        #endregion

        #region 获取用户

        _User = Users.GetCurrentUser(_Site.ID);

        #endregion

        base.OnLoad(e);
    }

    /// <summary>
    /// 取得网站的根目录的URL
    /// </summary>
    /// <returns></returns>
    public static string GetRootURI()
    {
        string AppPath = "";
        HttpContext HttpCurrent = HttpContext.Current;
        HttpRequest Req;
        if (HttpCurrent != null)
        {
            Req = HttpCurrent.Request;

            string UrlAuthority = Req.Url.GetLeftPart(UriPartial.Authority);
            if (Req.ApplicationPath == null || Req.ApplicationPath == "/")
                //直接安装在   Web   站点   
                AppPath = UrlAuthority;
            else
                //安装在虚拟子目录下   
                AppPath = UrlAuthority + Req.ApplicationPath;
        }
        return AppPath;
    }
}
