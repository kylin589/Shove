using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
///TheadChart 的摘要说明
/// </summary>
public class TheadChart
{
    public TheadChart()
    {

    }
    //=======分布走势
    public DataTable SYDJ_FBZS(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {
        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_FBZS");
        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            dt.Columns.Add("b1", typeof(int));
            dt.Columns.Add("b2", typeof(int));
            dt.Columns.Add("b3", typeof(int));
            dt.Columns.Add("b4", typeof(int));
            dt.Columns.Add("b5", typeof(int));
            dt.Columns.Add("b6", typeof(int));
            dt.Columns.Add("b7", typeof(int));
            dt.Columns.Add("b8", typeof(int));
            dt.Columns.Add("b9", typeof(int));
            dt.Columns.Add("b10", typeof(int));
            dt.Columns.Add("b11", typeof(int));

            dt.Columns.Add("jb0", typeof(int));
            dt.Columns.Add("jb1", typeof(int));
            dt.Columns.Add("jb2", typeof(int));
            dt.Columns.Add("jb3", typeof(int));
            dt.Columns.Add("jb4", typeof(int));
            dt.Columns.Add("jb5", typeof(int));

            dt.Columns.Add("xb0", typeof(int));
            dt.Columns.Add("xb1", typeof(int));
            dt.Columns.Add("xb2", typeof(int));
            dt.Columns.Add("xb3", typeof(int));
            dt.Columns.Add("xb4", typeof(int));
            dt.Columns.Add("xb5", typeof(int));

            dt.Columns.Add("zb0", typeof(int));
            dt.Columns.Add("zb1", typeof(int));
            dt.Columns.Add("zb2", typeof(int));
            dt.Columns.Add("zb3", typeof(int));
            dt.Columns.Add("zb4", typeof(int));
            dt.Columns.Add("zb5", typeof(int));



            for (int i = 0; i < dt.Rows.Count; i++)
            {
                for (int j = 8; j <= 18; j++)
                {
                    if (i == 0)
                    {
                        if ((j - 7) == Convert.ToInt32(dt.Rows[i][1]) || (j - 7) == Convert.ToInt32(dt.Rows[i][2]) || (j - 7) == Convert.ToInt32(dt.Rows[i][3]) || (j - 7) == Convert.ToInt32(dt.Rows[i][4]) || (j - 7) == Convert.ToInt32(dt.Rows[i][5]))
                        {
                            dt.Rows[i][j] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j] = 1;
                        }
                    }
                    else
                    {
                        if ((j - 7) == Convert.ToInt32(dt.Rows[i][1]) || (j - 7) == Convert.ToInt32(dt.Rows[i][2]) || (j - 7) == Convert.ToInt32(dt.Rows[i][3]) || (j - 7) == Convert.ToInt32(dt.Rows[i][4]) || (j - 7) == Convert.ToInt32(dt.Rows[i][5]))
                        {

                            if (Convert.ToInt32(dt.Rows[i - 1][j]) > 0)
                            {
                                dt.Rows[i][j] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j] = Convert.ToInt32(dt.Rows[i - 1][j]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j]) > 0)
                            {
                                dt.Rows[i][j] = Convert.ToInt32(dt.Rows[i - 1][j]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j] = 1;
                            }

                        }
                    }
                }

                int frag = 0;
                int xfrag1 = 0;
                int zfrag2 = 0;
                if (i == 0)
                {
                    for (int m = 1; m <= 5; m++)
                    {
                        switch (dt.Rows[i][m].ToString())
                        {
                            case "01":
                                frag++;
                                xfrag1++;
                                zfrag2++;
                                break;
                            case "02":
                                xfrag1++;
                                zfrag2++;
                                break;
                            case "03":
                                frag++;
                                xfrag1++;
                                zfrag2++;
                                break;
                            case "04":
                                xfrag1++;
                                break;
                            case "05":
                                frag++;
                                zfrag2++;
                                xfrag1++;
                                break;
                            case "07":
                                frag++;
                                zfrag2++;
                                break;
                            case "09":
                                frag++;
                                break;
                            case "11":
                                frag++;
                                zfrag2++;
                                break;
                        }
                    }
                    for (int m = 0; m <= 5; m++)
                    {
                        if (m != frag)
                        {
                            dt.Rows[i][m + 19] = 1;
                        }
                        else
                        {
                            dt.Rows[i][m + 19] = -1;

                        }

                        if (m != xfrag1)
                        {
                            dt.Rows[i][m + 25] = 1;
                        }
                        else
                        {
                            dt.Rows[i][m + 25] = -1;
                        }

                        if (m != zfrag2)
                        {
                            dt.Rows[i][m + 31] = 1;
                        }
                        else
                        {
                            dt.Rows[i][m + 31] = -1;
                        }
                    }

                }
                else
                {
                    for (int m = 1; m <= 5; m++)
                    {
                        switch (dt.Rows[i][m].ToString())
                        {
                            case "01":
                                frag++;
                                xfrag1++;
                                zfrag2++;
                                break;
                            case "02":
                                xfrag1++;
                                zfrag2++;
                                break;
                            case "03":
                                frag++;
                                xfrag1++;
                                zfrag2++;
                                break;
                            case "04":
                                xfrag1++;
                                break;
                            case "05":
                                frag++;
                                zfrag2++;
                                xfrag1++;
                                break;
                            case "07":
                                frag++;
                                zfrag2++;
                                break;
                            case "09":
                                frag++;
                                break;
                            case "11":
                                frag++;
                                zfrag2++;
                                break;
                        }
                    }
                    for (int m = 0; m <= 5; m++)
                    {
                        if (m != frag)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][m + 19]) <= 0)
                            {
                                dt.Rows[i][m + 19] = 1;
                            }
                            else
                            {
                                dt.Rows[i][m + 19] = Convert.ToInt32(dt.Rows[i - 1][m + 19]) + 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][m + 19]) > 0)
                            {
                                dt.Rows[i][m + 19] = -1;
                            }
                            else
                            {
                                dt.Rows[i][m + 19] = Convert.ToInt32(dt.Rows[i - 1][m + 19]) - 1;
                            }

                        }
                        if (m != xfrag1)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][m + 25]) <= 0)
                            {
                                dt.Rows[i][m + 25] = 1;
                            }
                            else
                            {
                                dt.Rows[i][m + 25] = Convert.ToInt32(dt.Rows[i - 1][m + 25]) + 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][m + 25]) > 0)
                            {
                                dt.Rows[i][m + 25] = -1;
                            }
                            else
                            {
                                dt.Rows[i][m + 25] = Convert.ToInt32(dt.Rows[i - 1][m + 25]) - 1;
                            }
                        }
                        if (m != zfrag2)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][m + 31]) <= 0)
                            {
                                dt.Rows[i][m + 31] = 1;
                            }
                            else
                            {
                                dt.Rows[i][m + 31] = Convert.ToInt32(dt.Rows[i - 1][m + 31]) + 1;
                            }


                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][m + 31]) > 0)
                            {
                                dt.Rows[i][m + 31] = -1;
                            }
                            else
                            {
                                dt.Rows[i][m + 31] = Convert.ToInt32(dt.Rows[i - 1][m + 31]) - 1;
                            }
                        }
                    }
                }


            }
            Shove._Web.Cache.SetCache("SYDJ_FBZS", dt, 600);
        }
        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");



        return dtall;
    }

    //========= 定位走势
    public DataTable SYDJ_DWZS(int DaySpan, int Type, int number, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;


        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_DWZS");

        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            dt.Columns.Add("b1", typeof(int));
            dt.Columns.Add("b2", typeof(int));
            dt.Columns.Add("b3", typeof(int));
            dt.Columns.Add("b4", typeof(int));
            dt.Columns.Add("b5", typeof(int));
            dt.Columns.Add("b6", typeof(int));
            dt.Columns.Add("b7", typeof(int));
            dt.Columns.Add("b8", typeof(int));
            dt.Columns.Add("b9", typeof(int));
            dt.Columns.Add("b10", typeof(int));
            dt.Columns.Add("b11", typeof(int));

            dt.Columns.Add("sb0", typeof(int));
            dt.Columns.Add("sb1", typeof(int));
            dt.Columns.Add("sb2", typeof(int));
            dt.Columns.Add("sb3", typeof(int));
            dt.Columns.Add("sb4", typeof(int));
            dt.Columns.Add("sb5", typeof(int));

            dt.Columns.Add("yb0", typeof(int));
            dt.Columns.Add("yb1", typeof(int));
            dt.Columns.Add("yb2", typeof(int));

            dt.Columns.Add("cb0", typeof(int));
            dt.Columns.Add("cb1", typeof(int));
            dt.Columns.Add("cb2", typeof(int));
            dt.Columns.Add("cb3", typeof(int));

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                for (int j = 8; j <= 18; j++)
                {
                    if (i == 0)
                    {
                        if ((j - 7) == Convert.ToInt32(dt.Rows[i][number]))
                        {
                            dt.Rows[i][j] = -1;
                        }
                        else
                        {

                            dt.Rows[i][j] = 1;
                        }
                    }
                    else
                    {
                        if ((j - 7) == Convert.ToInt32(dt.Rows[i][number]))
                        {

                            if (Convert.ToInt32(dt.Rows[i - 1][j]) > 0)
                            {
                                dt.Rows[i][j] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j] = Convert.ToInt32(dt.Rows[i - 1][j]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j]) > 0)
                            {
                                dt.Rows[i][j] = Convert.ToInt32(dt.Rows[i - 1][j]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j] = 1;
                            }

                        }
                    }
                }

                if (i == 0)
                {
                    //===============数字特征
                    if (Convert.ToInt32(dt.Rows[i][number]) == 1 || Convert.ToInt32(dt.Rows[i][number]) == 3 || Convert.ToInt32(dt.Rows[i][number]) == 5)
                    {
                        dt.Rows[i][19] = -1;
                    }
                    else
                    {
                        dt.Rows[i][19] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 2)
                    {
                        dt.Rows[i][20] = -1;
                    }
                    else
                    {
                        dt.Rows[i][20] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 4)
                    {
                        dt.Rows[i][21] = -1;
                    }
                    else
                    {
                        dt.Rows[i][21] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 7 || Convert.ToInt32(dt.Rows[i][number]) == 11)
                    {
                        dt.Rows[i][22] = -1;
                    }
                    else
                    {
                        dt.Rows[i][22] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 9)
                    {
                        dt.Rows[i][23] = -1;
                    }
                    else
                    {
                        dt.Rows[i][23] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 6 || Convert.ToInt32(dt.Rows[i][number]) == 8 || Convert.ToInt32(dt.Rows[i][number]) == 10)
                    {
                        dt.Rows[i][24] = -1;
                    }
                    else
                    {
                        dt.Rows[i][24] = 1;
                    }

                    //==============================除3
                    if (Convert.ToInt32(dt.Rows[i][number]) == 3 || Convert.ToInt32(dt.Rows[i][number]) == 6 || Convert.ToInt32(dt.Rows[i][number]) == 9)
                    {
                        dt.Rows[i][25] = -1;
                    }
                    else
                    {
                        dt.Rows[i][25] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 1 || Convert.ToInt32(dt.Rows[i][number]) == 4 || Convert.ToInt32(dt.Rows[i][number]) == 7 || Convert.ToInt32(dt.Rows[i][number]) == 10)
                    {
                        dt.Rows[i][26] = -1;
                    }
                    else
                    {
                        dt.Rows[i][26] = 1;
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 2 || Convert.ToInt32(dt.Rows[i][number]) == 5 || Convert.ToInt32(dt.Rows[i][number]) == 8 || Convert.ToInt32(dt.Rows[i][number]) == 11)
                    {
                        dt.Rows[i][27] = -1;
                    }
                    else
                    {
                        dt.Rows[i][27] = 1;
                    }
                    //==============重邻间孤
                    dt.Rows[i][28] = 1;

                    dt.Rows[i][29] = 1;

                    dt.Rows[i][30] = 1;

                    dt.Rows[i][31] = 1;
                }
                else
                {
                    //===============数字特征
                    if (Convert.ToInt32(dt.Rows[i][number]) == 1 || Convert.ToInt32(dt.Rows[i][number]) == 3 || Convert.ToInt32(dt.Rows[i][number]) == 5)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][19]) < 0)
                        {
                            dt.Rows[i][19] = Convert.ToInt32(dt.Rows[i - 1][19]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][19] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][19]) > 0)
                        {
                            dt.Rows[i][19] = Convert.ToInt32(dt.Rows[i - 1][19]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][19] = 1;
                        }
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 2)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][20]) < 0)
                        {
                            dt.Rows[i][20] = Convert.ToInt32(dt.Rows[i - 1][20]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][20] = -1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][20]) > 0)
                        {
                            dt.Rows[i][20] = Convert.ToInt32(dt.Rows[i - 1][20]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][20] = 1;
                        }

                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 4)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][21]) < 0)
                        {
                            dt.Rows[i][21] = Convert.ToInt32(dt.Rows[i - 1][21]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][21] = -1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][21]) > 0)
                        {
                            dt.Rows[i][21] = Convert.ToInt32(dt.Rows[i - 1][21]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][21] = 1;
                        }

                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 7 || Convert.ToInt32(dt.Rows[i][number]) == 11)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][22]) < 0)
                        {
                            dt.Rows[i][22] = Convert.ToInt32(dt.Rows[i - 1][22]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][22] = -1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][22]) > 0)
                        {
                            dt.Rows[i][22] = Convert.ToInt32(dt.Rows[i - 1][22]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][22] = 1;
                        }
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 9)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][23]) < 0)
                        {
                            dt.Rows[i][23] = Convert.ToInt32(dt.Rows[i - 1][23]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][23] = -1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][23]) > 0)
                        {
                            dt.Rows[i][23] = Convert.ToInt32(dt.Rows[i - 1][23]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][23] = 1;
                        }

                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 6 || Convert.ToInt32(dt.Rows[i][number]) == 8 || Convert.ToInt32(dt.Rows[i][number]) == 10)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][24]) < 0)
                        {
                            dt.Rows[i][24] = Convert.ToInt32(dt.Rows[i - 1][24]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][24] = -1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][24]) > 0)
                        {
                            dt.Rows[i][24] = Convert.ToInt32(dt.Rows[i - 1][24]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][24] = 1;
                        }

                    }

                    //==============================除3
                    if (Convert.ToInt32(dt.Rows[i][number]) == 3 || Convert.ToInt32(dt.Rows[i][number]) == 6 || Convert.ToInt32(dt.Rows[i][number]) == 9)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][25]) < 0)
                        {
                            dt.Rows[i][25] = Convert.ToInt32(dt.Rows[i - 1][25]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][25] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][25]) > 0)
                        {
                            dt.Rows[i][25] = Convert.ToInt32(dt.Rows[i - 1][25]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][25] = 1;
                        }
                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 1 || Convert.ToInt32(dt.Rows[i][number]) == 4 || Convert.ToInt32(dt.Rows[i][number]) == 7 || Convert.ToInt32(dt.Rows[i][number]) == 10)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][26]) < 0)
                        {
                            dt.Rows[i][26] = Convert.ToInt32(dt.Rows[i - 1][26]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][26] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][26]) > 0)
                        {
                            dt.Rows[i][26] = Convert.ToInt32(dt.Rows[i - 1][26]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][26] = 1;
                        }

                    }

                    if (Convert.ToInt32(dt.Rows[i][number]) == 2 || Convert.ToInt32(dt.Rows[i][number]) == 5 || Convert.ToInt32(dt.Rows[i][number]) == 8 || Convert.ToInt32(dt.Rows[i][number]) == 11)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][27]) < 0)
                        {
                            dt.Rows[i][27] = Convert.ToInt32(dt.Rows[i - 1][27]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][27] = -1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][27]) > 0)
                        {
                            dt.Rows[i][27] = Convert.ToInt32(dt.Rows[i - 1][27]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][27] = 1;
                        }


                    }

                    //==============重邻间孤

                    if (Convert.ToInt32(dt.Rows[i][number]) == Convert.ToInt32(dt.Rows[i - 1][number]))
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][28]) < 0)
                        {
                            dt.Rows[i][28] = Convert.ToInt32(dt.Rows[i - 1][28]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][28] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][28]) > 0)
                        {
                            dt.Rows[i][28] = Convert.ToInt32(dt.Rows[i - 1][28]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][28] = 1;
                        }
                    }

                    if (System.Math.Abs(Convert.ToInt32(dt.Rows[i][number]) - Convert.ToInt32(dt.Rows[i - 1][number])) == 1)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][29]) < 0)
                        {
                            dt.Rows[i][29] = Convert.ToInt32(dt.Rows[i - 1][29]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][29] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][29]) > 0)
                        {
                            dt.Rows[i][29] = Convert.ToInt32(dt.Rows[i - 1][29]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][29] = 1;
                        }
                    }

                    if (System.Math.Abs(Convert.ToInt32(dt.Rows[i][number]) - Convert.ToInt32(dt.Rows[i - 1][number])) == 2)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][30]) < 0)
                        {
                            dt.Rows[i][30] = Convert.ToInt32(dt.Rows[i - 1][30]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][30] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][30]) > 0)
                        {
                            dt.Rows[i][30] = Convert.ToInt32(dt.Rows[i - 1][30]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][30] = 1;
                        }
                    }

                    if (System.Math.Abs(Convert.ToInt32(dt.Rows[i][number]) - Convert.ToInt32(dt.Rows[i - 1][number])) > 2)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][31]) < 0)
                        {
                            dt.Rows[i][31] = Convert.ToInt32(dt.Rows[i - 1][31]) - 1;
                        }
                        else
                        {
                            dt.Rows[i][31] = -1;
                        }
                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][31]) > 0)
                        {
                            dt.Rows[i][31] = Convert.ToInt32(dt.Rows[i - 1][31]) + 1;
                        }
                        else
                        {
                            dt.Rows[i][31] = 1;
                        }
                    }


                }
            }
        }
        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");



        return dtall;
    }

    //======= 和值分布
    public DataTable SYDJ_HZFB(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_HZFB");
        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            for (int i = 15; i <= 45; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 9; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                for (int j = 15; j <= 45; j++)
                {
                    if (i == 0)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3]) + Convert.ToInt32(dt.Rows[i][4]) + Convert.ToInt32(dt.Rows[i][5])))
                        {
                            dt.Rows[i][j - 7] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j - 7] = 1;
                        }
                    }
                    else
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3]) + Convert.ToInt32(dt.Rows[i][4]) + Convert.ToInt32(dt.Rows[i][5])))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j - 7]) < 0)
                            {
                                dt.Rows[i][j - 7] = Convert.ToInt32(dt.Rows[i - 1][j - 7]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j - 7] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j - 7]) > 0)
                            {
                                dt.Rows[i][j - 7] = Convert.ToInt32(dt.Rows[i - 1][j - 7]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j - 7] = 1;
                            }

                        }
                    }
                }

                for (int j = 0; j < 10; j++)
                {
                    if (i == 0)
                    {
                        if (j.ToString() == Convert.ToString(Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3]) + Convert.ToInt32(dt.Rows[i][4]) + Convert.ToInt32(dt.Rows[i][5])).Substring(1))
                        {
                            dt.Rows[i][j + 39] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 39] = 1;
                        }
                    }
                    else
                    {
                        if (j.ToString() == Convert.ToString(Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3]) + Convert.ToInt32(dt.Rows[i][4]) + Convert.ToInt32(dt.Rows[i][5])).Substring(1))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 39]) < 0)
                            {
                                dt.Rows[i][j + 39] = Convert.ToInt32(dt.Rows[i - 1][j + 39]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 39] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 39]) > 0)
                            {
                                dt.Rows[i][j + 39] = Convert.ToInt32(dt.Rows[i - 1][j + 39]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 39] = 1;
                            }
                        }
                    }
                }
            }
            Shove._Web.Cache.SetCache("SYDJ_HZFB", dt, 600);
        }
        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }

    //=======  前二分布图
    public DataTable SYDJ_Q2FBT(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_Q2FBT");

        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("bb" + i.ToString(), typeof(int));
            }

            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("bc" + i.ToString(), typeof(int));
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (i == 0)
                {
                    for (int j = 0; j < 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) - 1 || j == Convert.ToInt32(dt.Rows[i][2]) - 1)
                        {
                            dt.Rows[i][j + 8] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 8] = 1;
                        }
                    }

                    for (int j = 0; j < 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) - 1)
                        {
                            dt.Rows[i][j + 19] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 19] = 1;
                        }
                    }

                    for (int j = 0; j < 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][2]) - 1)
                        {
                            dt.Rows[i][j + 30] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 30] = 1;
                        }
                    }
                }
                else
                {
                    for (int j = 0; j < 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) - 1 || j == Convert.ToInt32(dt.Rows[i][2]) - 1)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 8]) < 0)
                            {
                                dt.Rows[i][j + 8] = Convert.ToInt32(dt.Rows[i - 1][j + 8]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 8] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 8]) > 0)
                            {
                                dt.Rows[i][j + 8] = Convert.ToInt32(dt.Rows[i - 1][j + 8]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 8] = 1;
                            }

                        }
                    }

                    for (int j = 0; j < 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) - 1)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 19]) < 0)
                            {
                                dt.Rows[i][j + 19] = Convert.ToInt32(dt.Rows[i - 1][j + 19]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 19] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 19]) > 0)
                            {
                                dt.Rows[i][j + 19] = Convert.ToInt32(dt.Rows[i - 1][j + 19]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 19] = 1;
                            }

                        }
                    }

                    for (int j = 0; j < 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][2]) - 1)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 30]) < 0)
                            {
                                dt.Rows[i][j + 30] = Convert.ToInt32(dt.Rows[i - 1][j + 30]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 30] = -1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 30]) > 0)
                            {
                                dt.Rows[i][j + 30] = Convert.ToInt32(dt.Rows[i - 1][j + 30]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 30] = 1;
                            }
                        }
                    }
                }
            }
            Shove._Web.Cache.SetCache("SYDJ_Q2FBT", dt, 600);

        }

        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }

    //=======   前二组选对应表
    public DataTable SYDJ_Q2ZXDYB(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_Q2ZXDYB");
        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            dt.Columns.Add("bh", typeof(int));

            for (int i = 3; i <= 21; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i][8] = Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]);

                if (i == 0)
                {
                    for (int j = 3; j <= 21; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]))
                        {
                            dt.Rows[i][j + 6] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 6] = 1;
                        }
                    }
                }
                else
                {
                    for (int j = 3; j <= 21; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 6]) < 0)
                            {
                                dt.Rows[i][j + 6] = Convert.ToInt32(dt.Rows[i - 1][j + 6]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 6] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 6]) > 0)
                            {
                                dt.Rows[i][j + 6] = Convert.ToInt32(dt.Rows[i - 1][j + 6]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 6] = 1;
                            }
                        }
                    }
                }
            }
            Shove._Web.Cache.SetCache("SYDJ_Q2ZXDYB", dt, 600);
        }

        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }

    //=======   前二和值
    public DataTable SYDJ_Q2HZ(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_Q2HZ");
        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            for (int i = 3; i <= 21; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 9; i++)
            {
                dt.Columns.Add("bb" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 2; i++)
            {
                dt.Columns.Add("bc3" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 3; i++)
            {
                dt.Columns.Add("bc4" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 4; i++)
            {
                dt.Columns.Add("bc5" + i.ToString(), typeof(int));
            }

            dt.Columns.Add("bd1", typeof(int));
            dt.Columns.Add("bd2", typeof(int));
            dt.Columns.Add("bj1", typeof(int));
            dt.Columns.Add("bj2", typeof(int));

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (i == 0)
                {
                    for (int j = 3; j <= 21; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]))
                        {
                            dt.Rows[i][j + 5] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 5] = 1;
                        }
                    }

                    for (int j = 0; j <= 9; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 10)
                        {
                            dt.Rows[i][j + 27] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 27] = 1;
                        }
                    }

                    for (int j = 0; j < 3; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 3)
                        {
                            dt.Rows[i][j + 37] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 37] = 1;
                        }
                    }

                    for (int j = 0; j < 4; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 4)
                        {
                            dt.Rows[i][j + 40] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 40] = 1;
                        }
                    }

                    for (int j = 0; j < 5; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 5)
                        {
                            dt.Rows[i][j + 44] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 44] = 1;
                        }
                    }

                    if ((Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) > 11)
                    {
                        dt.Rows[i][49] = -1;
                        dt.Rows[i][50] = 1;
                    }
                    else
                    {
                        dt.Rows[i][49] = 1;
                        dt.Rows[i][50] = -1;
                    }

                    if ((Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 2 == 1)
                    {
                        dt.Rows[i][51] = -1;
                        dt.Rows[i][52] = 1;
                    }
                    else
                    {
                        dt.Rows[i][51] = 1;
                        dt.Rows[i][52] = -1;
                    }
                }
                else
                {
                    for (int j = 3; j <= 21; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 5]) > 0)
                            {
                                dt.Rows[i][j + 5] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 5] = Convert.ToInt32(dt.Rows[i - 1][j + 5]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 5]) < 0)
                            {
                                dt.Rows[i][j + 5] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 5] = Convert.ToInt32(dt.Rows[i - 1][j + 5]) + 1;
                            }
                        }
                    }

                    for (int j = 0; j <= 9; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 10)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 27]) > 0)
                            {
                                dt.Rows[i][j + 27] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 27] = Convert.ToInt32(dt.Rows[i - 1][j + 27]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 27]) < 0)
                            {
                                dt.Rows[i][j + 27] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 27] = Convert.ToInt32(dt.Rows[i - 1][j + 27]) + 1;
                            }
                        }
                    }

                    for (int j = 0; j < 3; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 3)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 37]) > 0)
                            {
                                dt.Rows[i][j + 37] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 37] = Convert.ToInt32(dt.Rows[i - 1][j + 37]) - 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 37]) < 0)
                            {
                                dt.Rows[i][j + 37] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 37] = Convert.ToInt32(dt.Rows[i - 1][j + 37]) + 1;
                            }

                        }
                    }

                    for (int j = 0; j < 4; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 4)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 40]) > 0)
                            {
                                dt.Rows[i][j + 40] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 40] = Convert.ToInt32(dt.Rows[i - 1][j + 40]) - 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 40]) < 0)
                            {
                                dt.Rows[i][j + 40] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 40] = Convert.ToInt32(dt.Rows[i - 1][j + 40]) + 1;
                            }

                        }
                    }

                    for (int j = 0; j < 5; j++)
                    {

                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 5)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 44]) > 0)
                            {
                                dt.Rows[i][j + 44] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 44] = Convert.ToInt32(dt.Rows[i - 1][j + 44]) - 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 44]) < 0)
                            {
                                dt.Rows[i][j + 44] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 44] = Convert.ToInt32(dt.Rows[i - 1][j + 44]) + 1;
                            }
                        }
                    }

                    if ((Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) > 11)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][49]) > 0)
                        {
                            dt.Rows[i][49] = -1;
                        }
                        else
                        {
                            dt.Rows[i][49] = Convert.ToInt32(dt.Rows[i - 1][49]) - 1;
                        }

                        if (Convert.ToInt32(dt.Rows[i - 1][50]) < 0)
                        {
                            dt.Rows[i][50] = 1;
                        }
                        else
                        {
                            dt.Rows[i][50] = Convert.ToInt32(dt.Rows[i - 1][50]) + 1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][49]) < 0)
                        {
                            dt.Rows[i][49] = 1;
                        }
                        else
                        {
                            dt.Rows[i][49] = Convert.ToInt32(dt.Rows[i - 1][49]) + 1;
                        }

                        if (Convert.ToInt32(dt.Rows[i - 1][50]) > 0)
                        {
                            dt.Rows[i][50] = -1;
                        }
                        else
                        {
                            dt.Rows[i][50] = Convert.ToInt32(dt.Rows[i - 1][50]) - 1;
                        }

                    }

                    if ((Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2])) % 2 == 1)
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][51]) > 0)
                        {
                            dt.Rows[i][51] = -1;
                        }
                        else
                        {
                            dt.Rows[i][51] = Convert.ToInt32(dt.Rows[i - 1][51]) - 1;
                        }

                        if (Convert.ToInt32(dt.Rows[i - 1][52]) < 0)
                        {
                            dt.Rows[i][52] = 1;
                        }
                        else
                        {
                            dt.Rows[i][52] = Convert.ToInt32(dt.Rows[i - 1][52]) + 1;
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(dt.Rows[i - 1][51]) < 0)
                        {
                            dt.Rows[i][51] = 1;
                        }
                        else
                        {
                            dt.Rows[i][51] = Convert.ToInt32(dt.Rows[i - 1][51]) + 1;
                        }

                        if (Convert.ToInt32(dt.Rows[i - 1][52]) > 0)
                        {
                            dt.Rows[i][52] = -1;
                        }
                        else
                        {
                            dt.Rows[i][52] = Convert.ToInt32(dt.Rows[i - 1][52]) - 1;
                        }
                    }
                }
            }
            Shove._Web.Cache.SetCache("SYDJ_Q2HZ", dt, 600);
        }

        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }

    //=======   前三分位图 
    public DataTable SYDJ_Q3FWT(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_Q3FWT");

        if (dt == null)
        {

            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];


            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("bb" + i.ToString(), typeof(int));
            }

            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("bc" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 3; i++)
            {
                dt.Columns.Add("bd" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 3; i++)
            {
                dt.Columns.Add("be" + i.ToString(), typeof(int));
            }


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (i == 0)
                {
                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]))
                        {
                            dt.Rows[i][j + 7] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 7] = 1;
                        }
                    }

                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][2]))
                        {
                            dt.Rows[i][j + 18] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 18] = 1;
                        }
                    }

                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][3]))
                        {
                            dt.Rows[i][j + 29] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 29] = 1;
                        }
                    }

                    int fragj = 0;
                    int fragd = 0;

                    for (int j = 1; j <= 3; j++)
                    {
                        if (Convert.ToInt32(dt.Rows[i][j]) % 2 == 1)
                        {
                            fragj++;
                        }
                        if (Convert.ToInt32(dt.Rows[i][j]) > 5)
                        {
                            fragd++;
                        }
                    }

                    for (int j = 0; j <= 3; j++)
                    {
                        if (j == fragj)
                        {
                            dt.Rows[i][j + 41] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 41] = 1;
                        }
                    }

                    for (int j = 0; j <= 3; j++)
                    {
                        if (j == fragd)
                        {
                            dt.Rows[i][j + 45] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 45] = 1;
                        }
                    }


                }
                else
                {
                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 7]) < 0)
                            {
                                dt.Rows[i][j + 7] = Convert.ToInt32(dt.Rows[i - 1][j + 7]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 7] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 7]) > 0)
                            {
                                dt.Rows[i][j + 7] = Convert.ToInt32(dt.Rows[i - 1][j + 7]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 7] = 1;
                            }

                        }
                    }

                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][2]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 18]) < 0)
                            {
                                dt.Rows[i][j + 18] = Convert.ToInt32(dt.Rows[i - 1][j + 18]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 18] = -1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 18]) > 0)
                            {
                                dt.Rows[i][j + 18] = Convert.ToInt32(dt.Rows[i - 1][j + 18]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 18] = 1;
                            }
                        }
                    }

                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][3]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 29]) < 0)
                            {
                                dt.Rows[i][j + 29] = Convert.ToInt32(dt.Rows[i - 1][j + 29]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 29] = -1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 29]) > 0)
                            {
                                dt.Rows[i][j + 29] = Convert.ToInt32(dt.Rows[i - 1][j + 29]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 29] = 1;
                            }

                        }
                    }

                    int fragj = 0;
                    int fragd = 0;

                    for (int j = 1; j <= 3; j++)
                    {
                        if (Convert.ToInt32(dt.Rows[i][j]) % 2 == 1)
                        {
                            fragj++;
                        }
                        if (Convert.ToInt32(dt.Rows[i][j]) > 5)
                        {
                            fragd++;
                        }
                    }


                    for (int j = 0; j <= 3; j++)
                    {
                        if (j == fragj)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 41]) < 0)
                            {
                                dt.Rows[i][j + 41] = Convert.ToInt32(dt.Rows[i - 1][j + 41]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 41] = -1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 41]) > 0)
                            {
                                dt.Rows[i][j + 41] = Convert.ToInt32(dt.Rows[i - 1][j + 41]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 41] = 1;
                            }
                        }
                    }

                    for (int j = 0; j <= 3; j++)
                    {
                        if (j == fragd)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 45]) < 0)
                            {
                                dt.Rows[i][j + 45] = Convert.ToInt32(dt.Rows[i - 1][j + 45]) - 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 45] = -1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 45]) > 0)
                            {
                                dt.Rows[i][j + 45] = Convert.ToInt32(dt.Rows[i - 1][j + 45]) + 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 45] = 1;
                            }
                        }
                    }

                }
            }
            Shove._Web.Cache.SetCache("SYDJ_Q3FWT", dt, 600);
        }

        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }

    //=======   前三分布图 
    public DataTable SYDJ_Q3FBT(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_Q3FBT");

        if (dt == null)
        {
            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];

            for (int i = 1; i <= 11; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 1; i <= 8; i++)
            {
                dt.Columns.Add("bb" + i.ToString(), typeof(int));
            }

            for (int i = 1; i <= 8; i++)
            {
                dt.Columns.Add("bc" + i.ToString(), typeof(int));
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (i == 0)
                {
                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) || j == Convert.ToInt32(dt.Rows[i][2]) || j == Convert.ToInt32(dt.Rows[i][3]))
                        {
                            dt.Rows[i][j + 7] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 7] = 1;
                        }
                    }

                    ArrayList a = new ArrayList();
                    a.Add("111");
                    a.Add("110");
                    a.Add("101");
                    a.Add("011");
                    a.Add("100");
                    a.Add("010");
                    a.Add("001");
                    a.Add("000");

                    for (int j = 1; j <= 8; j++)
                    {
                        if ((j - 1) == a.IndexOf(Convert.ToString(Convert.ToInt32(dt.Rows[i][1]) % 2) + Convert.ToString(Convert.ToInt32(dt.Rows[i][2]) % 2) + Convert.ToString(Convert.ToInt32(dt.Rows[i][3]) % 2)))
                        {
                            dt.Rows[i][j + 18] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 18] = 1;
                        }
                    }

                    for (int j = 1; j <= 8; j++)
                    {
                        if ((8 - j) == a.IndexOf(Convert.ToString(Convert.ToInt32(dt.Rows[i][1]) > 5 ? "1" : "0") + Convert.ToString(Convert.ToInt32(dt.Rows[i][2]) > 5 ? "1" : "0") + Convert.ToString(Convert.ToInt32(dt.Rows[i][3]) > 5 ? "1" : "0")))
                        {
                            dt.Rows[i][j + 26] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 26] = 1;
                        }
                    }

                }
                else
                {

                    for (int j = 1; j <= 11; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) || j == Convert.ToInt32(dt.Rows[i][2]) || j == Convert.ToInt32(dt.Rows[i][3]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 7]) > 0)
                            {
                                dt.Rows[i][j + 7] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 7] = Convert.ToInt32(dt.Rows[i - 1][j + 7]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 7]) < 0)
                            {
                                dt.Rows[i][j + 7] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 7] = Convert.ToInt32(dt.Rows[i - 1][j + 7]) + 1;
                            }

                        }
                    }

                    ArrayList a = new ArrayList();
                    a.Add("111");
                    a.Add("110");
                    a.Add("101");
                    a.Add("011");
                    a.Add("100");
                    a.Add("010");
                    a.Add("001");
                    a.Add("000");

                    for (int j = 1; j <= 8; j++)
                    {
                        if ((j - 1) == a.IndexOf(Convert.ToString(Convert.ToInt32(dt.Rows[i][1]) % 2) + Convert.ToString(Convert.ToInt32(dt.Rows[i][2]) % 2) + Convert.ToString(Convert.ToInt32(dt.Rows[i][3]) % 2)))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 18]) > 0)
                            {
                                dt.Rows[i][j + 18] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 18] = Convert.ToInt32(dt.Rows[i - 1][j + 18]) - 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 18]) < 0)
                            {
                                dt.Rows[i][j + 18] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 18] = Convert.ToInt32(dt.Rows[i - 1][j + 18]) + 1;
                            }

                        }
                    }

                    for (int j = 1; j <= 8; j++)
                    {
                        if ((8 - j) == a.IndexOf(Convert.ToString(Convert.ToInt32(dt.Rows[i][1]) > 5 ? "1" : "0") + Convert.ToString(Convert.ToInt32(dt.Rows[i][2]) > 5 ? "1" : "0") + Convert.ToString(Convert.ToInt32(dt.Rows[i][3]) > 5 ? "1" : "0")))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 26]) > 0)
                            {
                                dt.Rows[i][j + 26] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 26] = Convert.ToInt32(dt.Rows[i - 1][j + 26]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 26]) < 0)
                            {
                                dt.Rows[i][j + 26] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 26] = Convert.ToInt32(dt.Rows[i - 1][j + 26]) + 1;
                            }

                        }
                    }

                }
            }
            Shove._Web.Cache.SetCache("SYDJ_Q3FBT", dt, 600);
        }
        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }

    //=======   前三和值图 
    public DataTable SYDJ_Q3HZT(int DaySpan, int Type, ref int ReturnValue, ref string returnDescription)
    {

        DataSet ds = null;
        DataTable dt = null;
        DataTable dtall = null;
        DateTime Date = System.DateTime.Now;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SYDJ_Q3HZT");

        if (dt == null)
        {

            DAL.Procedures.P_TrendChart_11YDJ_WINNUM(ref ds, Date, 62, ref ReturnValue, ref returnDescription);

            if (ds == null)
            {
                return dt;
            }

            dt = ds.Tables[0];


            for (int i = 6; i <= 30; i++)
            {
                dt.Columns.Add("b" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 9; i++)
            {
                dt.Columns.Add("bb" + i.ToString(), typeof(int));
            }

            for (int i = 0; i <= 3; i++)
            {
                dt.Columns.Add("bc3" + i.ToString(), typeof(int));
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (i == 0)
                {
                    for (int j = 6; j <= 30; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3]))
                        {
                            dt.Rows[i][j + 2] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 2] = 1;
                        }
                    }

                    for (int j = 0; j <= 9; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3])) % 10)
                        {
                            dt.Rows[i][j + 33] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 33] = 1;
                        }
                    }

                    for (int j = 0; j < 3; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3])) % 3)
                        {
                            dt.Rows[i][j + 43] = -1;
                        }
                        else
                        {
                            dt.Rows[i][j + 43] = 1;
                        }
                    }


                }
                else
                {
                    for (int j = 6; j <= 30; j++)
                    {
                        if (j == Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3]))
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 2]) > 0)
                            {
                                dt.Rows[i][j + 2] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 2] = Convert.ToInt32(dt.Rows[i - 1][j + 2]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 2]) < 0)
                            {
                                dt.Rows[i][j + 2] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 2] = Convert.ToInt32(dt.Rows[i - 1][j + 2]) + 1;
                            }
                        }
                    }

                    for (int j = 0; j <= 9; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3])) % 10)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 33]) > 0)
                            {
                                dt.Rows[i][j + 33] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 33] = Convert.ToInt32(dt.Rows[i - 1][j + 33]) - 1;
                            }
                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 33]) < 0)
                            {
                                dt.Rows[i][j + 33] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 33] = Convert.ToInt32(dt.Rows[i - 1][j + 33]) + 1;
                            }
                        }
                    }

                    for (int j = 0; j < 3; j++)
                    {
                        if (j == (Convert.ToInt32(dt.Rows[i][1]) + Convert.ToInt32(dt.Rows[i][2]) + Convert.ToInt32(dt.Rows[i][3])) % 3)
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 43]) > 0)
                            {
                                dt.Rows[i][j + 43] = -1;
                            }
                            else
                            {
                                dt.Rows[i][j + 43] = Convert.ToInt32(dt.Rows[i - 1][j + 43]) - 1;
                            }

                        }
                        else
                        {
                            if (Convert.ToInt32(dt.Rows[i - 1][j + 43]) < 0)
                            {
                                dt.Rows[i][j + 43] = 1;
                            }
                            else
                            {
                                dt.Rows[i][j + 43] = Convert.ToInt32(dt.Rows[i - 1][j + 43]) + 1;
                            }

                        }
                    }

                }
            }
            Shove._Web.Cache.SetCache("SYDJ_Q3HZT", dt, 600);
        }
        dtall = dt.Clone();

        DataRow[] dr = null;
        if (Type == 1)
        {
            dr = dt.Select("DaySpan <=" + DaySpan, "ID ASC");
        }
        else
        {
            dr = dt.Select("DaySpan =" + DaySpan, "ID ASC");
        }
        foreach (DataRow d in dr)
        {
            dtall.Rows.Add(d.ItemArray);
        }

        dtall.Columns.Remove("ID");
        dtall.Columns.Remove("DaySpan");

        return dtall;
    }
}
