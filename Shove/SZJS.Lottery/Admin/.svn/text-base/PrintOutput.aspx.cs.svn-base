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
using System.Data.OleDb;
using System.Net;
using System.IO;
using System.Xml;

public partial class Admin_PrintOutput : AdminPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDataForLottery();

            BindDataForIsuse();

            BindData();

            btnBuyAll.Visible = _User.Competences.IsOwnedCompetences(Competences.BuildCompetencesList(Competences.LotteryBuy));
        }
    }

    #region Web 窗体设计器生成的代码

    override protected void OnInit(EventArgs e)
    {
        RequestLoginPage = this.Request.Url.AbsoluteUri;

        RequestCompetences = Competences.BuildCompetencesList(Competences.LotteryBuy,Competences.QueryData);

        base.OnInit(e);
    }

    #endregion

    private void BindDataForLottery()
    {
        DataTable dt = new DAL.Tables.T_Lotteries().Open("[ID], [Name]", "[ID] in (" + (_Site.UseLotteryList == "" ? "-1" : _Site.UseLotteryList) + ")", "[Order]");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_PrintOutput");

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlLottery, dt, "Name", "ID");
    }

    private void BindDataForIsuse()
    {
        DataTable dt = new DAL.Tables.T_Isuses().Open("[ID], [Name]", "LotteryID = " + Shove._Web.Utility.FilteSqlInfusion(ddlLottery.SelectedValue) + " and StartTime < GetDate() and IsOpened = 0", "EndTime");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_PrintOutput");

            return;
        }

        Shove.ControlExt.FillDropDownList(ddlIsuse, dt, "Name", "ID");

        g.Visible = (ddlIsuse.Items.Count > 0);
    }

    protected void ddlLottery_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        BindDataForIsuse();

        BindData();
    }

    protected void ddlIsuse_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        if (ddlIsuse.Items.Count < 1)
        {
            return;
        }

        DataTable dt = new DAL.Views.V_SchemeSchedules().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and Schedule >= 100 and QuashStatus = 0 and Buyed = 0 and isOpened = 0", "[Money] desc");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", "Admin_PrintOutput");

            return;
        }

        dt.Columns.Add("LocateWaysAndMultiples", System.Type.GetType("System.String"));

        string BuyContent = "";
        string CnLocateWaysAndMultiples = "";

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dt.Rows[i]["Money"] = double.Parse(dt.Rows[i]["Money"].ToString()).ToString("N");

            if (new SZJS.Lottery()[SZJS.Lottery.ZCDC.sID].CheckPlayType(int.Parse(dt.Rows[i]["PlayTypeID"].ToString())))
            {
                dt.Rows[i]["Multiple"] = 0;

                try
                {
                    BuyContent = "";
                    CnLocateWaysAndMultiples = "";

                    string BuyNumberContent = "";

                    string str = dt.Rows[i]["LotteryNumber"].ToString(); ;
                    if (new SZJS.Lottery()[SZJS.Lottery.ZCDC.sID].GetSchemeSplit(str, ref BuyContent, ref CnLocateWaysAndMultiples))
                    {
                        string vote = "";
                        DataTable dtnew = PF.GetZCDCBuyContent(str, Shove._Convert.StrToLong(dt.Rows[i]["ID"].ToString(), -1), ref vote);

                        if (dtnew == null)
                        {
                            PF.GoError(ErrorNumber.DataReadWrite, "数据访问错误", this.GetType().BaseType.FullName);

                            return;
                        }

                        foreach (DataRow dr in dtnew.Rows)
                        {
                            if (BuyNumberContent == "")
                            {
                                BuyNumberContent += dr["No"].ToString() + " " + dr["LeagueTypeName"].ToString() + " " + dr["HostTeam"].ToString() + " VS " + dr["QuestTeam"].ToString() + " " + dr["Content"].ToString() + " " + dr["LotteryResult"].ToString();
                            }
                            else
                            {
                                BuyNumberContent += "<br />" + dr["No"].ToString() + " " + dr["LeagueTypeName"].ToString() + " " + dr["HostTeam"].ToString() + " VS " + dr["QuestTeam"].ToString() + " " + dr["Content"].ToString() + " " + dr["LotteryResult"].ToString();
                            }
                        }

                        dt.Rows[i]["LocateWaysAndMultiples"] = CnLocateWaysAndMultiples;
                    }
                    else
                    {
                        dt.Rows[i]["LocateWaysAndMultiples"] = "<font color='red'>读取错误！</font>";
                    }
                }
                catch
                {
                    dt.Rows[i]["LocateWaysAndMultiples"] = "<font color='red'>读取错误！</font>";
                }
            }

            dt.AcceptChanges();
        }

        g.DataSource = dt;
        g.DataBind();

        btnDownload.Enabled = (dt.Rows.Count > 0);
        btnDownload_txt.Enabled = (dt.Rows.Count > 0);

        btnBuyAll.Visible = (dt.Rows.Count > 0);

        fileUp.Disabled = (dt.Rows.Count < 1);
        btnUpload.Enabled = (dt.Rows.Count > 0);
    }

    protected void btnRefresh_Click(object sender, System.EventArgs e)
    {
        BindData();
    }

    protected void g_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
    {
        if (e.CommandName == "btnBuy")
        {
            string LotteryCode = ((TextBox)e.Item.FindControl("tbLotteryCode")).Text.Trim();

            int ReturnValue = -1;
            string ReturnDescription = "";

            int Results = -1;
            Results = DAL.Procedures.P_SchemePrintOut(
                Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbSiteID")).Value, -1),
                Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbID")).Value, -1),
                _User.ID, PrintOutTypes.Local, LotteryCode, true, ref ReturnValue, ref ReturnDescription);

            if (Results < 0)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

                return;
            }

            if (ReturnValue < 0)
            {
                PF.GoError(ErrorNumber.Unknow, ReturnDescription, this.Page.GetType().BaseType.FullName);

                return;
            }

            BindData();

            return;
        }
        else if (e.CommandName == "btnSerach")
        {
            long SchemeID = Shove._Convert.StrToLong(((HtmlInputHidden)e.Item.FindControl("tbID")).Value, -1);

            DataTable dt_SchemesSendToCenter = new DAL.Tables.T_SchemesSendToCenter().Open("top 1 *", "schemeid=" + SchemeID.ToString() + " and (Sends > 0) AND (Sends < 100)", "ID");

            if (dt_SchemesSendToCenter == null)
            {
                PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

                return;
            }

            if (dt_SchemesSendToCenter.Rows.Count < 1)
            {
                Shove._Web.JavaScript.Alert(this.Page, "此方案暂未拆票．");

                return;
            }

            SystemOptions so = new SystemOptions();

            string ElectronTicket_HPSD_Getway = so["ElectronTicket_HPSD_Getway"].Value.ToString();
            string ElectronTicket_HPSD_UserName = so["ElectronTicket_HPSD_UserName"].Value.ToString();
            string ElectronTicket_HPSD_UserPassword = so["ElectronTicket_HPSD_UserPassword"].Value.ToString();
            int TimeoutSeconds = 120;

            string ticketid = dt_SchemesSendToCenter.Rows[0]["Identifiers"].ToString();
            string Body = "<body><ticketQuery>" + "<ticket id=\"" + ticketid + "\"/>" + "</ticketQuery></body>";

            string MessageID = ElectronTicket_HPSD_UserName + DateTime.Now.ToString("yyyyMMdd") + DateTime.Now.ToString("HHmmss") + "99";
            string TimeStamp = DateTime.Now.ToString("yyyyMMdd") + DateTime.Now.ToString("HHmmss");

            string Message = "<?xml version=\"1.0\" encoding=\"GBK\"?>";
            Message += "<message version=\"1.0\" id=\"" + MessageID + "\">";
            Message += "<header>";
            Message += "<messengerID>" + ElectronTicket_HPSD_UserName + "</messengerID>";
            Message += "<timestamp>" + TimeStamp + "</timestamp>";
            Message += "<transactionType>105</transactionType>";
            Message += "<digest>" + Shove._Security.Encrypt.MD5(MessageID + TimeStamp + ElectronTicket_HPSD_UserPassword + Body, "gb2312") + "</digest>";
            Message += "</header>";
            Message += Body;
            Message += "</message>";

            new Log("System").Write("105|transType=105&transMessage=" + Message);

            string ReceiveString = "";

            try
            {
                ReceiveString = Post(ElectronTicket_HPSD_Getway, "transType=105&transMessage=" + Message, TimeoutSeconds);
            }
            catch
            {
                return;
            }

            if (ReceiveString.Length <= 10)
            {
                return;
            }

            string[] str_s = ReceiveString.Split('&');

            if ((str_s == null) || (str_s.Length < 1))
            {
                return;
            }

            string TransType = str_s[0];
            string TransMessage = str_s[1];

            TransType = TransType.Substring(10);
            TransMessage = TransMessage.Substring(13);

            new Log("System").Write(TransType + "|" + ReceiveString);

            System.Xml.XmlDocument XmlDoc = new XmlDocument();
            System.Xml.XmlNodeList nodes = null;

            try
            {
                XmlDoc.Load(new StringReader(TransMessage));
                nodes = XmlDoc.GetElementsByTagName("ticket");
            }
            catch { }

            if (nodes == null)
            {
                return;
            }

            for (int k = 0; k < nodes.Count; k++)
            {
                string Identifiers = nodes[k].Attributes["id"].Value;
                string Status = nodes[k].Attributes["status"].Value;
                string _Message = nodes[k].Attributes["message"].Value;

                if (Status == "0000")
                {
                    string DealTime = nodes[k].Attributes["dealTime"].Value;

                    int ReturnValue = 0;
                    string ReturnDescription = "";

                    int Result = DAL.Procedures.P_SchemesSendToCenterHandleUniteAnte(SchemeID, DateTime.Now, false, ref ReturnValue, ref ReturnDescription);

                    if ((Result < 0) || (ReturnValue < 0))
                    {
                        Shove._Web.JavaScript.Alert(this.Page, "对所查询到的电子票数据第一次处理出错(QueryTickets)：数据读写错误。票号：" + Identifiers + "，" + ReturnDescription);

                        new Log("System").Write("对所查询到的电子票数据第一次处理出错(QueryTickets)：数据读写错误。票号：" + Identifiers + "，" + ReturnDescription);

                        System.Threading.Thread.Sleep(1000);

                        ReturnValue = 0;
                        ReturnDescription = "";

                        Result = DAL.Procedures.P_SchemesSendToCenterHandleUniteAnte(SchemeID, Shove._Convert.StrToDateTime(DealTime, DateTime.Now.ToString()), false, ref ReturnValue, ref ReturnDescription);

                        if ((Result < 0) || (ReturnValue < 0))
                        {
                            Shove._Web.JavaScript.Alert(this.Page, "对所查询到的电子票数据第二次处理出错(QueryTickets)：数据读写错误。票号：" + Identifiers + "，" + ReturnDescription);

                            new Log("System").Write("对所查询到的电子票数据第二次处理出错(QueryTickets)：数据读写错误。票号：" + Identifiers + "，" + ReturnDescription);
                        }
                    }

                    continue;
                }

                Shove._Web.JavaScript.Alert(this.Page, _Message);

                DAL.Tables.T_SchemesSendToCenter t_SchemesSendToCenter = new DAL.Tables.T_SchemesSendToCenter();

                if ("0010 0011 0012 0014 0015 0016 0098 0097 1008 1009 1010 1012 1013 1016 1017 2001 2002 2003 2004 2010 2011 2012 2013 2014 2015 2016 2017 2018 2030 2031 2040 2041 2042 -1 2043 2044 2046 3000 3002 3003 3004 3005 3010 3011 3012 3013 3014 3015 3220 3221 3222 3223 3224 3225 9001 9002 9003 9004 9005 9006 9007 4001 4002 4003 4004 4005 4006 4007".IndexOf(Status) >= 0)
                {
                    t_SchemesSendToCenter.Sends.Value = Status + 100;
                    t_SchemesSendToCenter.Update( "SchemeID = " + SchemeID.ToString());

                    BindData();

                    return;
                }

                if (Status == "2052")
                {
                    System.Threading.Thread.Sleep(1000);

                    BindData();

                    return;
                }

                if (Status == "2032")
                {
                    t_SchemesSendToCenter.Sends.Value = "99";
                    t_SchemesSendToCenter.Update("SchemeID = " + SchemeID.ToString());

                    BindData();

                    return;
                }
            }

            BindData();

            return;
        }
    }

    protected void btnBuyAll_Click(object sender, EventArgs e)
    {
        if (g.Items.Count < 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "没有数据。");

            return;
        }

        int ReturnValue = -1;
        string ReturnDescription = "";

        int Fail = 0, OK = 0;

        foreach (DataListItem item in g.Items)
        {
            long SiteID = Shove._Convert.StrToLong(((HtmlInputHidden)item.FindControl("tbSiteID")).Value, -1);
            long _ID = Shove._Convert.StrToLong(((HtmlInputHidden)item.FindControl("tbID")).Value, -1);

            if ((SiteID < 1) || (_ID < 1))
            {
                Fail++;

                continue;
            }

            ReturnDescription = "";
            int Results = -1;
            Results = DAL.Procedures.P_SchemePrintOut(SiteID, _ID, _User.ID, PrintOutTypes.Local, "请电询", true, ref ReturnValue, ref ReturnDescription);

            if (Results < 0)
            {
                Fail++;

                continue;
            }


            if (ReturnValue < 0)
            {
                Fail++;

                continue;
            }

            OK++;
        }

        BindData();

        Shove._Web.JavaScript.Alert(this.Page, String.Format("操作完成，其中成功出票 {0} 个方案，失败 {1} 个方案。", OK, Fail));
    }

    protected void btnUpload_Click(object sender, System.EventArgs e)
    {
        string NewFileName = "";

        if (Shove._IO.File.UploadFile(this.Page, fileUp, "../Temp/", ref NewFileName, "execl") != 0)
        {
            Shove._Web.JavaScript.Alert(this.Page, "文件上传失败。");

            return;
        }

        string strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + this.Server.MapPath("../Temp/" + NewFileName) + ";Extended Properties=Excel 8.0;";
        OleDbConnection oleconn = new OleDbConnection(strConn);

        try
        {
            oleconn.Open();
        }
        catch
        {
            System.IO.File.Delete(this.Page.Server.MapPath("../Temp/" + NewFileName));

            Shove._Web.JavaScript.Alert(this.Page, "上传的文件读取错误。");

            return;
        }

        DataTable schemaTable = oleconn.GetOleDbSchemaTable(System.Data.OleDb.OleDbSchemaGuid.Tables, null);
        OleDbCommand Cmd = new OleDbCommand("select 站点编号 as SiteID, 内部编号 as [id], 彩票标识号 as LotteryCode from [" + schemaTable.Rows[0][2].ToString().Trim() + "]", oleconn);
        OleDbDataReader dr = null;

        try
        {
            dr = Cmd.ExecuteReader();
        }
        catch
        {
            oleconn.Close();
            System.IO.File.Delete(this.Page.Server.MapPath("../Temp/" + NewFileName));

            Shove._Web.JavaScript.Alert(this.Page, "上传的文件数据格式不正确。");

            return;
        }

        int OK = 0, Fail = 0;

        while (dr.Read())
        {
            long SiteID = Shove._Convert.StrToLong(dr["SiteID"].ToString(), -1);
            long _ID = Shove._Convert.StrToLong(dr["id"].ToString(), -1);
            string _LotteryCode = dr["LotteryCode"].ToString().Trim();

            if ((SiteID < 1) || (_ID < 1))
            {
                Fail++;

                continue;
            }

            if ((_LotteryCode == "") || (_LotteryCode == "<请输入标识号>"))
            {
                _LotteryCode = "请电询";
            }

            int ReturnValue = -1;
            string ReturnDescription = "";

            int Results = -1;
            Results = DAL.Procedures.P_SchemePrintOut(SiteID, _ID, _User.ID, PrintOutTypes.Local, _LotteryCode, true, ref ReturnValue, ref ReturnDescription);

            if (Results < 0)
            {
                Fail++;

                continue;
            }


            if (ReturnValue < 0)
            {
                Fail++;

                continue;
            }

            OK++;
        }

        dr.Close();
        oleconn.Close();

        BindData();

        System.IO.File.Delete(this.Page.Server.MapPath("../Temp/" + NewFileName));
        Shove._Web.JavaScript.Alert(this.Page, String.Format("操作完成，其中成功出票 {0} 个方案，失败 {1} 个方案。", OK, Fail));
    }

    protected void btnDownload_Click(object sender, EventArgs e)
    {
        DataTable dt = new DAL.Views.V_Isuses().Open("", "[id] = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue), "");

        if ((dt == null) || (dt.Rows.Count < 1))
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        string FileName = dt.Rows[0]["Code"].ToString() + dt.Rows[0]["Name"].ToString() + ".xls";

        dt = new DAL.Views.V_SchemeSchedules().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and Schedule >= 100 and QuashStatus = 0 and Buyed = 0", "[Money] desc");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        if (dt.Rows.Count < 1)
        {
            Shove._Web.JavaScript.Alert(this.Page, "没有数据。");

            return;
        }

        HttpResponse response;

        response = Page.Response;
        response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        Response.ContentType = "application/ms-excel";
        response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
        response.Write("站点编号\t内部编号\t方案编号\t类别\t购买内容\t倍数\t金额\t彩票标识号\n");

        foreach (DataRow dr in dt.Rows)
        {
            string LotteryNumber = "";
            try
            {
                LotteryNumber = "| " + dr["LotteryNumber"].ToString().Replace("\r\n", " | ") + " |";
            }
            catch { }
            response.Write(dr["SiteID"].ToString() + "\t" + dr["ID"].ToString() + "\t" + dr["SchemeNumber"].ToString() + "\t" + dr["PlayTypeName"].ToString() + "\t" + LotteryNumber + "\t" + dr["Multiple"].ToString() + "\t" + dr["Money"].ToString() + "\t<请输入标识号>\n");
        }

        response.End();
    }

    protected void btnDownload_txt_Click(object sender, EventArgs e)
    {
        DataTable dt = new DAL.Views.V_Isuses().Open("", "[ID] = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue), "");

        if ((dt == null) || (dt.Rows.Count < 1))
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        string FileName = dt.Rows[0]["Code"].ToString() + dt.Rows[0]["Name"].ToString() + ".txt";

        dt = new DAL.Views.V_SchemeSchedules().Open("", "IsuseID = " + Shove._Web.Utility.FilteSqlInfusion(ddlIsuse.SelectedValue) + " and Schedule >= 100 and QuashStatus = 0 and Buyed = 0", "[Money] desc");

        if (dt == null)
        {
            PF.GoError(ErrorNumber.DataReadWrite, "数据库繁忙，请重试", this.Page.GetType().BaseType.FullName);

            return;
        }

        if (dt.Rows.Count < 1)
        {
            Shove._Web.JavaScript.Alert(this.Page, "没有数据。");

            return;
        }

        HttpResponse response;

        response = Page.Response;
        response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        Response.ContentType = "application/ms-txt";
        response.ContentEncoding = System.Text.Encoding.GetEncoding("utf-8");

        foreach (DataRow dr in dt.Rows)
        {
            string LotteryNumber = dr["LotteryNumber"].ToString();

            response.Write("***********************************************\r\n");
            response.Write("站点编号: " + dr["SiteID"].ToString() + "\r\n");
            response.Write("方案编号: " + dr["SchemeNumber"].ToString() + "\t内部编号:" + dr["ID"].ToString() + "\r\n");
            response.Write("方案类别: " + dr["PlayTypeName"].ToString() + "\r\n");
            response.Write("方案倍数: " + dr["Multiple"].ToString() + "\t方案金额:" + double.Parse(dr["Money"].ToString()).ToString("N") + "\r\n");
            response.Write("***********************************************\r\n");
            response.Write(LotteryNumber);
            response.Write("\r\n\r\n\r\n");
        }

        response.End();
    }

    protected void g_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //if (e.Item.ItemType == ListItemType.EditItem || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        //{
        //    Shove.Web.UI.ShoveConfirmButton sb = e.Item.FindControl("btnBuy") as Shove.Web.UI.ShoveConfirmButton;

        //    sb.Visible = btnBuyAll.Visible;
        //}
    }

    private static string Post(string Url, string RequestString, int TimeoutSeconds)
    {
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(Url);

        if (TimeoutSeconds > 0)
        {
            request.Timeout = 1000 * TimeoutSeconds;
        }
        request.Method = "POST";
        request.AllowAutoRedirect = true;

        byte[] data = System.Text.Encoding.GetEncoding("GBK").GetBytes(RequestString);

        request.ContentType = "application/x-www-form-urlencoded";
        request.Accept = "";
        Stream outstream = request.GetRequestStream();

        outstream.Write(data, 0, data.Length);
        outstream.Close();

        HttpWebResponse hwrp = (HttpWebResponse)request.GetResponse();
        string ContentType = hwrp.Headers.Get("Content-Type");

        StreamReader sr = null;

        sr = new StreamReader(hwrp.GetResponseStream(), System.Text.Encoding.GetEncoding("GBK"));

        return sr.ReadToEnd();
    }
}
