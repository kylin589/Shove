using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;

public partial class Home_TrendCharts_C15X5_C15X5_ZHZST : TrendChartPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridViewBind();
            ColorBind();
            GridView1.Style["border-collapse"] = "";
            BindDataForAD();
        }
    }

    private void BindDataForAD()
    {
        lbAd.Text = "&nbsp;";
        string CacheKey = "Advertisements";
        DataTable dt = Shove._Web.Cache.GetCacheAsDataTable(CacheKey);

        if (dt == null)
        {
            dt = new DAL.Tables.T_Advertisements().Open("", "isShow=1", "");

            if (dt == null || dt.Rows.Count < 1)
            {
                return;
            }

            Shove._Web.Cache.SetCache(CacheKey, dt, 600);
        }

        DataRow[] drAd = dt.Select("LotteryID=59 and [Name] = '广告一'", "[Order]");
        DataRow[] drAd1 = dt.Select("LotteryID=59 and [Name] = '广告二'", "[Order]");
        DataRow[] drAd2 = dt.Select("LotteryID=59 and [Name] = '广告三'", "[Order]");

        if (drAd.Length < 1)
        {
            return;
        }

        StringBuilder sb = new StringBuilder();

        sb.AppendLine("<div id='icefable1'>")
            .AppendLine("<table width='200' border='0' cellpadding='0' cellspacing='0'>")
            .AppendLine("<tbody style='height: 20px;'>");

        foreach (DataRow dr in drAd)
        {
            string[] title = dr["Title"].ToString().Split(new String[] { "Color" }, StringSplitOptions.None);
            sb.Append("<tr><td class='blue'><a style='color:").Append(title.Length == 2 ? title[1] : "#000000").Append(";' href=\"").Append(dr["Url"].ToString()).Append("\" target='_blank'>").Append(title[0]).AppendLine("</a></td></tr>");
        }

        sb.AppendLine("</tbody>")
            .AppendLine("</table>")
            .AppendLine("</div>")
            .AppendLine("<script type='text/jscript' language='javascript'>")
            .AppendLine("marqueesHeight=20;")
            .AppendLine("stopscroll=false;")
            .AppendLine("with(icefable1){")
            .AppendLine("style.height=marqueesHeight;")
            .AppendLine("style.overflowX='visible';")
            .AppendLine("style.overflowY='hidden';")
            .AppendLine("noWrap=true;")
            .AppendLine("onmouseover=new Function('stopscroll=true');")
            .AppendLine("onmouseout=new Function('stopscroll=false');")
            .AppendLine("}")
            .AppendLine("preTop=0; currentTop=marqueesHeight; stoptime=0;")
            .AppendLine("icefable1.innerHTML+=icefable1.innerHTML;")
            .AppendLine("")
            .AppendLine("function init_srolltext(){")
            .AppendLine("icefable1.scrollTop=0;")
            .AppendLine("scrollUpInterval = setInterval('scrollUp()',1);")
            .AppendLine("}")
            .AppendLine("")
            .AppendLine("function scrollUp(){")
            .AppendLine("if(stopscroll==true) return;")
            .AppendLine("currentTop+=1;")
            .AppendLine("if(currentTop==marqueesHeight+1)")
            .AppendLine("{")
            .AppendLine("stoptime+=1;")
            .AppendLine("currentTop-=1;")
            .AppendLine("if(stoptime==300) ")
            .AppendLine("{")
            .AppendLine("currentTop=0;")
            .AppendLine("stoptime=0;  		")
            .AppendLine("}")
            .AppendLine("}")
            .AppendLine("else {  	")
            .AppendLine("preTop=icefable1.scrollTop;")
            .AppendLine("icefable1.scrollTop+=1;")
            .AppendLine("if(preTop==icefable1.scrollTop){")
            .AppendLine("icefable1.scrollTop=marqueesHeight;")
            .AppendLine("icefable1.scrollTop+=1;")
            .AppendLine("}")
            .AppendLine("}")
            .AppendLine("}")
            .AppendLine("init_srolltext();");

        if (drAd.Length == 1)
        {
            sb.AppendLine("clearInterval(scrollUpInterval);");
        }

        sb.AppendLine("</script>");

        lbAd.Text = sb.ToString();

        sb = new StringBuilder();

        if (drAd1.Length > 0)
        {
            sb.AppendLine("<div id='icefable2'>")
            .AppendLine("<table width='100%' border='0' cellpadding='0' cellspacing='0'>")
            .AppendLine("<tbody style='height: 20px;'>");

            foreach (DataRow dr in drAd1)
            {
                string[] title = dr["Title"].ToString().Split(new String[] { "Color" }, StringSplitOptions.None);
                sb.Append("<tr><td class='blue'><a style='color:").Append(title.Length == 2 ? title[1] : "#000000").Append(";' href=\"").Append(dr["Url"].ToString()).Append("\" target='_blank'>").Append(title[0]).AppendLine("</a></td></tr>");
            }

            sb.AppendLine("</tbody>")
                .AppendLine("</table>")
                .AppendLine("</div>")
                .AppendLine("<script type='text/jscript' language='javascript'>")
                .AppendLine("marqueesHeight2=20;")
                .AppendLine("stopscroll2=false;")
                .AppendLine("with(icefable2){")
                .AppendLine("style.height=marqueesHeight2;")
                .AppendLine("style.overflowX='visible';")
                .AppendLine("style.overflowY='hidden';")
                .AppendLine("noWrap=true;")
                .AppendLine("onmouseover=new Function('stopscroll=true');")
                .AppendLine("onmouseout=new Function('stopscroll=false');")
                .AppendLine("}")
                .AppendLine("preTop2=0; currentTop2=marqueesHeight2; stoptime2=0;")
                .AppendLine("icefable2.innerHTML+=icefable2.innerHTML;")
                .AppendLine("")
                .AppendLine("function init_srolltext2(){")
                .AppendLine("icefable2.scrollTop=0;")
                .AppendLine("scrollUpInterval2 = setInterval('scrollUp1()',1);")
                .AppendLine("}")
                .AppendLine("")
                .AppendLine("function scrollUp1(){")
                .AppendLine("if(stopscroll2==true) return;")
                .AppendLine("currentTop2+=1;")
                .AppendLine("if(currentTop2==marqueesHeight2+1)")
                .AppendLine("{")
                .AppendLine("stoptime2+=1;")
                .AppendLine("currentTop2-=1;")
                .AppendLine("if(stoptime2==300) ")
                .AppendLine("{")
                .AppendLine("currentTop2=0;")
                .AppendLine("stoptime2=0;  		")
                .AppendLine("}")
                .AppendLine("}")
                .AppendLine("else {  	")
                .AppendLine("preTop2=icefable2.scrollTop;")
                .AppendLine("icefable2.scrollTop+=1;")
                .AppendLine("if(preTop==icefable2.scrollTop){")
                .AppendLine("icefable2.scrollTop=marqueesHeight2;")
                .AppendLine("icefable2.scrollTop+=1;")
                .AppendLine("}")
                .AppendLine("}")
                .AppendLine("}")
                .AppendLine("init_srolltext2();");

            if (drAd1.Length == 1)
            {
                sb.AppendLine("clearInterval(scrollUpInterval2);");
            }

            sb.AppendLine("</script>");
        }

        lbAd1.Text = sb.ToString();

        sb = new StringBuilder();

        if (drAd2.Length > 0)
        {
            sb.AppendLine("<div id='icefable3'>")
                .AppendLine("<table width='100%' border='0' cellpadding='0' cellspacing='0'>")
                .AppendLine("<tbody style='height: 20px;'>");

            foreach (DataRow dr in drAd2)
            {
                string[] title = dr["Title"].ToString().Split(new String[] { "Color" }, StringSplitOptions.None);
                sb.Append("<tr><td class='blue'><a style='color:").Append(title.Length == 2 ? title[1] : "#000000").Append(";' href=\"").Append(dr["Url"].ToString()).Append("\" target='_blank'>").Append(title[0]).AppendLine("</a></td></tr>");
            }

            sb.AppendLine("</tbody>")
                .AppendLine("</table>")
                .AppendLine("</div>")
                .AppendLine("")
                .AppendLine("<script type='text/jscript' language='javascript'>")
                .AppendLine("marqueesHeight3=20;")
                .AppendLine("stopscroll3=false;")
                .AppendLine("with(icefable3){")
                .AppendLine("style.height=marqueesHeight3;")
                .AppendLine("style.overflowX='visible';")
                .AppendLine("style.overflowY='hidden';")
                .AppendLine("noWrap=true;")
                .AppendLine("onmouseover=new Function('stopscroll=true');")
                .AppendLine("onmouseout=new Function('stopscroll=false');")
                .AppendLine("}")
                .AppendLine("preTop3=0; currentTop3=marqueesHeight; stoptime3=0;")
                .AppendLine("icefable3.innerHTML+=icefable3.innerHTML;")
                .AppendLine("")
                .AppendLine("function init_srolltext3(){")
                .AppendLine("icefable3.scrollTop=0;")
                .AppendLine("scrollUpInterval3 = setInterval('scrollUp3()',1);")
                .AppendLine("}")
                .AppendLine("")
                .AppendLine("function scrollUp3(){")
                .AppendLine("if(stopscroll3==true) return;")
                .AppendLine("currentTop3+=1;")
                .AppendLine("if(currentTop3==marqueesHeight3+1)")
                .AppendLine("{")
                .AppendLine("stoptime3+=1;")
                .AppendLine("currentTop3-=1;")
                .AppendLine("if(stoptime3==300) ")
                .AppendLine("{")
                .AppendLine("currentTop3=0;")
                .AppendLine("stoptime3=0;  		")
                .AppendLine("}")
                .AppendLine("}")
                .AppendLine("else {  	")
                .AppendLine("preTop3=icefable3.scrollTop;")
                .AppendLine("icefable3.scrollTop+=1;")
                .AppendLine("if(preTop3==icefable3.scrollTop){")
                .AppendLine("icefable3.scrollTop=marqueesHeight;")
                .AppendLine("icefable3.scrollTop+=1;")
                .AppendLine("}")
                .AppendLine("}")
                .AppendLine("}")
                .AppendLine("init_srolltext3();");

            if (drAd2.Length == 1)
            {
                sb.AppendLine("clearInterval(scrollUpInterval3);");
            }

            sb.AppendLine("</script>");
        }

        lbAd2.Text = sb.ToString();
    }

    protected void GridViewBind()
    {
        string result = "";

        DataTable dt = new DataTable();
        dt = new TrendChart().C15X5_ZHZST_Select(30, "", "", ref result); //，默认显示30期

        if (dt == null || dt.Rows.Count < 1)
        {
            //Shove._Web.JavaScript.Alert(this.Page, "数据库里没有此彩种开奖号码信息！");
        }
        else
        {
            int i = dt.Rows.Count;
            tb1.Text = dt.Rows[0]["Isuse"].ToString();
            tb2.Text = dt.Rows[i - 1]["Isuse"].ToString();
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btnTop30_Click(object sender, EventArgs e)
    {
        string result = "";

        DataTable dt = new DataTable();
        dt = new TrendChart().C15X5_ZHZST_Select(30, "", "", ref result); //，默认显示30期

        if (dt == null || dt.Rows.Count < 1)
        {
            //Shove._Web.JavaScript.Alert(this.Page, "数据库里没有此彩种开奖号码信息！");
        }
        else
        {
            int i = dt.Rows.Count;
            tb1.Text = dt.Rows[0]["Isuse"].ToString();
            tb2.Text = dt.Rows[i - 1]["Isuse"].ToString();
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
        ColorBind();
    }

    protected void btnTop50_Click(object sender, EventArgs e)
    {
        string result = "";

        DataTable dt = new DataTable();
        dt = new TrendChart().C15X5_ZHZST_Select(50, "", "", ref result); //，默认显示50期

        if (dt == null || dt.Rows.Count < 1)
        {
            //Shove._Web.JavaScript.Alert(this.Page, "数据库里没有此彩种开奖号码信息！");
        }
        else
        {
            int i = dt.Rows.Count;
            tb1.Text = dt.Rows[0]["Isuse"].ToString();
            tb2.Text = dt.Rows[i - 1]["Isuse"].ToString();
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
        ColorBind();
    }

    protected void btnTop100_Click(object sender, EventArgs e)
    {
        string result = "";

        DataTable dt = new DataTable();
        dt = new TrendChart().C15X5_ZHZST_Select(100, "", "", ref result); //，默认显示100期

        if (dt == null || dt.Rows.Count < 1)
        {
            //Shove._Web.JavaScript.Alert(this.Page, "数据库里没有此彩种开奖号码信息！");
        }
        else
        {
            int k = dt.Rows.Count;
            tb1.Text = dt.Rows[0]["Isuse"].ToString();
            tb2.Text = dt.Rows[k - 1]["Isuse"].ToString();
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
        ColorBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (tb1.Text == "" || tb1.Text == null || tb2.Text == "" || tb2.Text == null)
        {
            Shove._Web.JavaScript.Alert(this.Page, "请输入起止期数！");
        }

        int i = Shove._Convert.StrToInt(tb1.Text, 0);
        int j = Shove._Convert.StrToInt(tb2.Text, 0);
        if (i > j)
        {
            Shove._Web.JavaScript.Alert(this.Page, "起始期数输入有误，请查证在输入！");
            return;
        }

        string result = "";
        DataTable dt = null;

        dt = new TrendChart().C15X5_ZHZST_Select(0, tb1.Text.ToString(), tb2.Text.ToString(), ref result);

        if (dt == null || dt.Rows.Count < 1)
        {
            //Shove._Web.JavaScript.Alert(this.Page, "数据库里没有此彩种开奖号码信息！");
        }
        else
        {
            int k = dt.Rows.Count;
            tb1.Text = dt.Rows[0]["Isuse"].ToString();
            tb2.Text = dt.Rows[k - 1]["Isuse"].ToString();
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
        ColorBind();
    }

    protected void ColorBind()
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            for (int j = 2; j < 31; j++)
            {
                if (Shove._Convert.StrToInt(GridView1.Rows[i].Cells[j].Text, -2) == -1)
                {
                    GridView1.Rows[i].Cells[j].Text = "&nbsp;";
                }
            }

            for (int k = 2; k < 11; k++)
            {
                if ((Shove._Convert.StrToInt(GridView1.Rows[i].Cells[k].Text, 0) < 10 && Shove._Convert.StrToInt(GridView1.Rows[i].Cells[k].Text, 0) > 0))
                {
                    GridView1.Rows[i].Cells[k].Text = "0" + GridView1.Rows[i].Cells[k].Text;
                }
            }

            if (GridView1.Rows[i].Cells[21].Text == "Blue|0")
            {
                GridView1.Rows[i].Cells[21].Text = "0";
                GridView1.Rows[i].Cells[21].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[21].Text == "Red|0")
            {
                GridView1.Rows[i].Cells[21].Text = "0";
                GridView1.Rows[i].Cells[21].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[22].Text == "Blue|1")
            {
                GridView1.Rows[i].Cells[22].Text = "1";
                GridView1.Rows[i].Cells[22].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[22].Text == "Red|1")
            {
                GridView1.Rows[i].Cells[22].Text = "1";
                GridView1.Rows[i].Cells[22].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[23].Text == "Blue|2")
            {
                GridView1.Rows[i].Cells[23].Text = "2";
                GridView1.Rows[i].Cells[23].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[23].Text == "Red|2")
            {
                GridView1.Rows[i].Cells[23].Text = "2";
                GridView1.Rows[i].Cells[23].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[24].Text == "Blue|3")
            {
                GridView1.Rows[i].Cells[24].Text = "3";
                GridView1.Rows[i].Cells[24].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[24].Text == "Red|3")
            {
                GridView1.Rows[i].Cells[24].Text = "3";
                GridView1.Rows[i].Cells[24].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[25].Text == "Blue|4")
            {
                GridView1.Rows[i].Cells[25].Text = "4";
                GridView1.Rows[i].Cells[25].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[25].Text == "Red|4")
            {
                GridView1.Rows[i].Cells[25].Text = "4";
                GridView1.Rows[i].Cells[25].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[26].Text == "Blue|5")
            {
                GridView1.Rows[i].Cells[26].Text = "5";
                GridView1.Rows[i].Cells[26].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[26].Text == "Red|5")
            {
                GridView1.Rows[i].Cells[26].Text = "5";
                GridView1.Rows[i].Cells[26].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[27].Text == "Blue|6")
            {
                GridView1.Rows[i].Cells[27].Text = "6";
                GridView1.Rows[i].Cells[27].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[27].Text == "Red|6")
            {
                GridView1.Rows[i].Cells[27].Text = "6";
                GridView1.Rows[i].Cells[27].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[28].Text == "Blue|7")
            {
                GridView1.Rows[i].Cells[28].Text = "7";
                GridView1.Rows[i].Cells[28].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[28].Text == "Red|7")
            {
                GridView1.Rows[i].Cells[28].Text = "7";
                GridView1.Rows[i].Cells[28].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            if (GridView1.Rows[i].Cells[29].Text == "Blue|8")
            {
                GridView1.Rows[i].Cells[29].Text = "8";
                GridView1.Rows[i].Cells[29].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[29].Text == "Red|8")
            {
                GridView1.Rows[i].Cells[29].Text = "8";
                GridView1.Rows[i].Cells[29].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }
            if (GridView1.Rows[i].Cells[30].Text == "Blue|9")
            {
                GridView1.Rows[i].Cells[30].Text = "9";
                GridView1.Rows[i].Cells[30].ForeColor = System.Drawing.Color.FromArgb(000, 000, 255);
            }
            if (GridView1.Rows[i].Cells[30].Text == "Red|9")
            {
                GridView1.Rows[i].Cells[30].Text = "9";
                GridView1.Rows[i].Cells[30].ForeColor = System.Drawing.Color.FromArgb(255, 000, 000);
            }

            for (int j = 31; j < 34; j++)
            {
                if (Shove._Convert.StrToInt(GridView1.Rows[i].Cells[j].Text, 0) == 0)
                {
                    GridView1.Rows[i].Cells[j].Text = "&nbsp;";
                }
            }
        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.SetRenderMethodDelegate(new RenderMethod(DrawGridFooter));
        }

        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.SetRenderMethodDelegate(new RenderMethod(DrawGridHeader));
        }
    }

    protected void DrawGridHeader(HtmlTextWriter output, Control ctl)
    {
        output.Write("<td rowspan='2'　align='center' valign='middle' bgcolor='#e8f1f8'>期号</td>");       
        output.Write("<td rowspan='2'　align='center' valign='middle' bgcolor='#e8f1f8'>开奖号码</td>");
        output.Write("<td colspan='5' height='18px' bgcolor='#e8f1f8'>一区</td>");
        output.Write("<td colspan='5' bgcolor='#e8f1f8'>二区</td>");
        output.Write("<td colspan='5' bgcolor='#e8f1f8'>三区</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>重号</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>连号</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>总和</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>奇偶比</td>");
        output.Write("<td colspan='10'　align='center' valign='middle' bgcolor='#e8f1f8'>个位分布</td>");
        output.Write("<td colspan='3'　align='center' valign='middle' bgcolor='#e8f1f8'>区间分布</td>");

        output.Write("<tr align='center' valign='middle' bgcolor='#e8f1f8'>");

        for (int i = 1; i < 10; i++)
        {
            output.Write("<td bgcolor='#e8f1f8' height='18px'>");
            output.Write(0 + i.ToString() + "</td>");
        }
        for (int i = 10; i < 16; i++)
        {
            output.Write("<td bgcolor='#e8f1f8'>");
            output.Write(i.ToString() + "</td>");
        }

        for (int i = 0; i < 10; i++)
        {
            output.Write("<td bgcolor='#e8f1f8' height='18px'>");
            output.Write(i.ToString() + "</td>");
        }
        output.Write("<td bgcolor='#e8f1f8'>一</td>");
        output.Write("<td  bgcolor='#e8f1f8'>二</td>");
        output.Write("<td  bgcolor='#e8f1f8'>三</td>");
    }

    protected void DrawGridFooter(HtmlTextWriter output, Control ctl)
    {
        output.Write("<td Height='18px'>预选1</td>");
        output.Write("<td>&nbsp;</td>");

        for (int i = 1; i < 10; i++)
        {
            output.Write("<td bgcolor='#FFFFFF' onClick=Style(this,'#ff0000','#FFFFFF') style='color:#FFFFFF;' align='center' valign='center'><strong>");
            output.Write(0 + i.ToString() + "</strong></span></td>");
        }

        for (int i = 10; i < 16; i++)
        {
            output.Write("<td bgcolor='#FFFFFF' onClick=Style(this,'#ff0000','#FFFFFF') style='color:#FFFFFF;' align='center' valign='center'><strong>");
            output.Write(i.ToString() + "</strong></td>");
        }

        for (int i = 0; i < 17; i++)
        {
            output.Write("<td>&nbsp;</td>");
        }

        output.Write("<tr align='center' valign='center' ></tr>");
        output.Write("<td align='center' valign='center' Height='18px'>预选2</td>");

        output.Write("<td>&nbsp;</td>");

        for (int i = 1; i < 10; i++)
        {
            output.Write("<td bgcolor='#FFFFFF' onClick=Style(this,'#ff0000','#FFFFFF') style='color:#FFFFFF;' align='center' valign='center'><strong>");
            output.Write(0 + i.ToString() + "</strong></span></td>");
        }

        for (int i = 10; i < 16; i++)
        {
            output.Write("<td bgcolor='#FFFFFF' onClick=Style(this,'#ff0000','#FFFFFF') style='color:#FFFFFF;' align='center' valign='center'><strong>");
            output.Write(i.ToString() + "</strong></td>");
        }

        for (int i = 0; i < 17; i++)
        {
            output.Write("<td>&nbsp;</td>");
        }

        output.Write("<tr align='center' valign='center' ></tr>");
        output.Write("<td align='center' valign='center' Height='18px'>预选3</td>");

        output.Write("<td>&nbsp;</td>");

        for (int i = 1; i < 10; i++)
        {
            output.Write("<td bgcolor='#FFFFFF' onClick=Style(this,'#ff0000','#FFFFFF') style='color:#FFFFFF;' align='center' valign='center'><strong>");
            output.Write(0 + i.ToString() + "</strong></span></td>");
        }

        for (int i = 10; i < 16; i++)
        {
            output.Write("<td bgcolor='#FFFFFF' onClick=Style(this,'#ff0000','#FFFFFF') style='color:#FFFFFF;' align='center' valign='center'><strong>");
            output.Write(i.ToString() + "</strong></td>");
        }

        for (int i = 0; i < 17; i++)
        {
            output.Write("<td>&nbsp;</td>");
        }

        output.Write("<tr align='center' valign='center' bgcolor='#e8f1f8'>");
        output.Write("<td rowspan='2'　align='center' valign='middle' bgcolor='#e8f1f8'>期号</td>");
        output.Write("<td rowspan='2'　align='center' valign='middle' bgcolor='#e8f1f8'>开奖号码</td>");
        for (int i = 1; i < 10; i++)
        {
            output.Write("<td bgcolor='#e8f1f8' height='18px'>");
            output.Write(0 + i.ToString() + "</td>");
        }
        for (int i = 10; i < 16; i++)
        {
            output.Write("<td bgcolor='#e8f1f8'>");
            output.Write(i.ToString() + "</td>");
        }
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>重号</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>连号</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>总和</td>");
        output.Write("<td rowspan='2' bgcolor='#e8f1f8'>奇偶比</td>");

        for (int i = 0; i < 10; i++)
        {
            output.Write("<td bgcolor='#e8f1f8' height='18px'>");
            output.Write(i.ToString() + "</td>");
        }
        output.Write("<td bgcolor='#e8f1f8'>一</td>");
        output.Write("<td  bgcolor='#e8f1f8'>二</td>");
        output.Write("<td bgcolor='#e8f1f8'>三</td>");

        output.Write("<tr align='center' valign='middle' bgcolor='#e8f1f8'>");
        output.Write("<td colspan='5' height='18px'>一区</td>");
        output.Write("<td colspan='5'>二区</td>");
        output.Write("<td colspan='5'>三区</td>");       
        output.Write("<td colspan='10'　align='center' valign='middle' bgcolor='#e8f1f8'>个位分布</td>");
        output.Write("<td colspan='3'　align='center' valign='middle' bgcolor='#e8f1f8'>区间分布</td>");
    }
}
