using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
///BBL1 的摘要说明
/// </summary>
public class TrendChart
{
    public TrendChart()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    // 双色球综合分布

    public DataTable SSQ_ZHFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_ZHFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;

            DAL.Procedures.P_TrendChart_SSQ_HMFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_ZHFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    public DataTable SSQ_ZH_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_ZH_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_ZH(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_ZH_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    public DataTable SSQ_DX_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_DX_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_DX(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_DX_Select", ds.Tables[0]);
                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    public DataTable SSQ_JO_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_JO_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_JO(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_JO_Select", ds.Tables[0]);
                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    public DataTable SSQ_HL_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_HL_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_HL(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_HL_Select", ds.Tables[0]);
                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //常规项目表
    public DataTable SSQ_CGXMB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_CGXMB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_CGXMB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_CGXMB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //篮球综合走试图
    public DataTable SSQ_BQZH_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_BQZH_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_BQZH(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_BQZH_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }
    //3区分布图
    public DataTable SSQ_3QFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSQ_3QFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSQ_3FQ(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSQ_3QFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //综合分布
    public DataTable FC3D_ZHFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_ZHFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_ZHFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_ZHFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //质合形态
    public DataTable FC3D_ZHXT_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_ZHXT_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_ZHXT(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_ZHXT_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //跨度形态
    public DataTable FC3D_KD_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_KD_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_KD(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_KD_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //和值形态
    public DataTable FC3D_HZ_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_HZ_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_HZ(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_HZ_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //大中小形态
    public DataTable FC3D_DZX_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_DZX_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_DZX(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_DZX_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //除3余数
    public DataTable FC3D_C3YS_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_C3YS_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_C3YS(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_C3YS_Select", ds.Tables[0]);
                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //形态走势图
    public DataTable FC3D_XTZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("FC3D_XTZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_3D_XTZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("FC3D_XTZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //7彩乐常规项目表
    public DataTable LC7_CGXMB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("LC7_CGXMB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_7LC_CGXMB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("LC7_CGXMB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    public DataTable LC7_ZHFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("LC7_ZHFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_7CL_HMFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("LC7_ZHFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4D常规项目表
    public DataTable D4_CGXMB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("D4_CGXMB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_4D_CGXMB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("D4_CGXMB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4D号码走势图
    public DataTable D4_ZHFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("D4_ZHFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_4D_ZHFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("D4_ZHFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }
    //东方6+1 号码分布
    public DataTable DF61_ZHFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("DF61_ZHFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_DF6J1_ZHFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("DF61_ZHFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //上海时时乐012路
    public DataTable SHSSL_012_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SHSSL_012_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SHSSL_012(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SHSSL_012_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //上海时时乐和值
    public DataTable SHSSL_HZ_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SHSSL_HZ_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SHSSL_HZ(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SHSSL_HZ_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //上海时时乐大小
    public DataTable SHSSL_DX_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SHSSL_DX_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SHSSL_DX(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SHSSL_DX_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //上海时时乐奇偶
    public DataTable SHSSL_JO_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SHSSL_JO_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SHSSL_JO(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SHSSL_JO_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //上海时时乐质合
    public DataTable SHSSL_ZH_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SHSSL_ZH_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SHSSL_ZH(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SHSSL_ZH_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //上海时时乐综合分布
    public DataTable SHSSL_ZHFB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SHSSL_ZHFB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SHSSL_ZHFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SHSSL_ZHFB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //15选5 常规项目表
    public DataTable C15X5_CGXMB_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("C15X5_CGXMB_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_15X5_CGXMB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("C15X5_CGXMB_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //15选5综合走势图
    public DataTable C15X5_ZHZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("C15X5_ZHZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_15X5_HMFB(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("C15X5_ZHZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    public DataTable SSC_5X_ZHFBZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_ZHFBZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XZHFBZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_ZHFBZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星 走势图
    public DataTable SSC_5X_ZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_ZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_ZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星和值走势图
    public DataTable SSC_5X_HZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_HZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XHZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_HZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星跨度走势图
    public DataTable SSC_5X_KDZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_KDZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XKDZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_KDZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星平均值走势图
    public DataTable SSC_5X_PJZZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_PJZZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XPJZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_PJZZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星大小走势图
    public DataTable SSC_5X_DXZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_DXZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XDXZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_DXZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星奇偶走势图
    public DataTable SSC_5X_JOZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_JOZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XJOZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_JOZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //五星质合走势图
    public DataTable SSC_5X_ZHZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_5X_ZHZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_5XZHZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_5X_ZHZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //-----------------------------------------------------------------------------------------------------

    //4星 走势图

    public DataTable SSC_4X_ZHFBZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_ZHFBZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XZHFBZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_ZHFBZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星 走势图
    public DataTable SSC_4X_ZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_ZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_ZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星和值走势图
    public DataTable SSC_4X_HZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_HZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XHZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_HZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星跨度走势图
    public DataTable SSC_4X_KDZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_KDZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XKDZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_KDZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星平均值走势图
    public DataTable SSC_4X_PJZZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_PJZZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XPJZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_PJZZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星大小走势图
    public DataTable SSC_4X_DXZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_DXZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XDXZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_DXZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星奇偶走势图
    public DataTable SSC_4X_JOZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_JOZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XJOZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_JOZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //4星质合走势图
    public DataTable SSC_4X_ZHZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_4X_ZHZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_4XZHZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_4X_ZHZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //-----------------------------------------------------------------------------------------------------

    //3星 走势图

    public DataTable SSC_3X_ZHFBZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_ZHFBZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XZHFBZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_ZHFBZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星 走势图
    public DataTable SSC_3X_ZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_ZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_ZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星和值走势图
    public DataTable SSC_3X_HZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_HZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XHZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_HZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //三星和值尾走势图；
    public DataTable SSC_3X_HZWST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_HZWST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XHZWZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_HZWST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //三星跨度走势图
    public DataTable SSC_3X_KDZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_KDZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XKDZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_KDZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星大小走势图
    public DataTable SSC_3X_DXZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_DXZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XDXZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_DXZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星奇偶走势图
    public DataTable SSC_3X_JOZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_JOZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XJOZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_JOZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星单选012走势图
    public DataTable SSC_3X_DX_012_ZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_DX_012_ZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3X_DX012_ZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_DX_012_ZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星组选012走势图
    public DataTable SSC_3X_ZX_012_ZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_ZX_012_ZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3X_ZX012_ZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_ZX_012_ZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //3星质合走势图
    public DataTable SSC_3X_ZHZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_3X_ZHZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_3XZHZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_3X_ZHZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //---------------------------------------------------------------------------------------------------------------------

    //2星标准综合走势图

    public DataTable SSC_2X_ZHFBZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_ZHFBZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XZHFBZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_ZHFBZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //2星和值走势图
    public DataTable SSC_2X_HZZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_HZZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XHZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_HZZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星和尾走势图
    public DataTable SSC_2X_HZWZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_HZWZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XHZWZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_HZWZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星均值走势图
    public DataTable SSC_2X_PJZZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_PJZZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XPJZZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_PJZZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星跨度走势图
    public DataTable SSC_2X_KDZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_KDZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XKDZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_KDZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星012路走势图
    public DataTable SSC_2X_012ZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_012ZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2X_012_ZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_012ZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星最大值走势图
    public DataTable SSC_2X_MAXZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_MAXZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XMaxZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_MAXZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星最小值走势图
    public DataTable SSC_2X_MinZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_MinZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XMINZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_MinZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }

    //二星大小单双走势图
    public DataTable SSC_2X_DXDSZST_Select(int num, string str1, string str2, ref string result)
    {
        DataTable dt = null;
        DataTable dt1 = null;

        dt = Shove._Web.Cache.GetCacheAsDataTable("SSC_2X_DXDSZST_Select");

        if (dt == null || dt.Rows.Count < 1)
        {
            DataSet ds = null;
            DAL.Procedures.P_TrendChart_SSC_2XDXDSZST(ref ds);

            if (ds == null || ds.Tables.Count < 1)
            {
                PF.GoError(ErrorNumber.Unknow, "参数错误或者数据库--无数据", this.GetType().BaseType.FullName);

                return dt1;
            }
            else
            {
                Shove._Web.Cache.SetCache("SSC_2X_DXDSZST_Select", ds.Tables[0]);

                dt = ds.Tables[0];
            }
        }

        dt1 = dt.Clone();

        //通过期号来查询
        if (num == 0)
        {
            int i = Shove._Convert.StrToInt(str1, 0);
            int j = Shove._Convert.StrToInt(str2, 0);

            DataRow[] dr2 = dt.Select("Isuse>=" + i + " and  Isuse<=" + j);

            foreach (DataRow r in dr2)
            {
                dt1.Rows.Add(r.ItemArray);
            }
        }

        //通过按纽选择查询多少期
        else
        {
            if (num >= dt.Rows.Count)
            {
                num = dt.Rows.Count;
            }

            int ii = dt.Rows.Count;                           //总记录数
            int jj = ii - num;

            DataRow[] drr = dt.Select("id > " + jj + " and id <= " + ii);

            foreach (DataRow rr in drr)
            {
                dt1.Rows.Add(rr.ItemArray);
            }
        }

        return dt1;
    }
}
