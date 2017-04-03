using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;
using System.Collections;

namespace SMS.Eucp.Gateway
{
    public class CallResult
    {
        public int Code;
        public string Description;
        public object Value;

        public CallResult(int code)
        {
            Code = code;

            if (Code == 1)
            {
                Code = 0;
                Description = "";

                return;
            }

            if (Code == 0)
            {
                Code = -999;
            }

            if (Code > 0)
            {
                Code *= -1;
            }

            switch (Code)
            {
                case -1:
                    Description = Code + "未知故障";
                    break;

                case -100:
                    Description = "序列号码为空或无效";
                    break;

                case -101:
                    Description = "网络故障";
                    break;

                case -102:
                    Description = "其它故障";
                    break;

                case -103:
                    Description = "注册企业基本信息失败，当软件注册号码注册成功，但整体还是失败，要重新注册";
                    break;

                case -104:
                    Description = "注册信息填写不完整";
                    break;

                case -105:
                    Description = "需要传递的指针参数为空(C#组件内部错误)";
                    break;

                case -106:
                    Description = "卡号或密码为空或无效";
                    break;

                case -107:
                    Description = "手机号码为空或者超过1000个";
                    break;

                case -108:
                    Description = "手机号码分割符号不正确";
                    break;

                case -109:
                    Description = "部分手机号码不正确，已删除，其余手机号码被发送";
                    break;

                case -110:
                    Description = "短信内容为空或超长(70个汉字)";
                    break;

                case -111:
                    Description = "附加号码过长(8位)";
                    break;

                case -112:
                    Description = "定时时间为空或格式不正确";
                    break;

                case -113:
                    Description = "旧密码或新密码为空";
                    break;

                case -114:
                    Description = "得到标识错误";
                    break;

                case -201:
                    Description = "计费失败，请充值";
                    break;

                case -999:
                    Description = "失败";
                    break;

                default:
                    Description = Code + "未知故障";
                    break;
            }
        }
    }

    public class SMS
    {
        public string FromMobile;
        public string Content;

        public SMS(string frommobile, string content)
        {
            FromMobile = frommobile;
            Content = content;
        }
    }

    public class ReceiveSmsContents
    {
        private ArrayList al = new ArrayList();
        public int Count
        {
            get
            {
                return al.Count;
            }
        }

        public void Add(string FromMobile, string Content)
        {
            al.Add(new SMS(FromMobile, Content));
        }

        public void Clear()
        {
            al.Clear();
        }

        public SMS this[int Index]
        {
            get
            {
                if ((Index < 0) || (Index >= Count))
                {
                    return null;
                }

                return (SMS)al[Index];
            }
        }
    }

    public class Gateway
    {
        private string UserName;
        private string UserPassword;

        public ReceiveSmsContents rsc = new ReceiveSmsContents();

        public Gateway(string Name, string Password)
        {
            if (String.IsNullOrEmpty(Name) || String.IsNullOrEmpty(Password))
            {
                throw new Exception("SMS.Gateway 需要设置用户名和密码。");
            }

            UserName = Name;
            UserPassword = Password;
        }

        public void SetPassword(string NewPassword)
        {
            UserPassword = NewPassword;
        }

        #region Dll 申明

        [DllImport("EUCPComm.dll", EntryPoint = "SendSMS")]  //即时发送
        public static extern int _SendSMS(string sn, string mn, string ct, string priority);

        [DllImport("EUCPComm.dll", EntryPoint = "SendSMSEx")]  //即时发送(扩展)
        public static extern int _SendSMSEx(string sn, string mn, string ct, string addi, string priority);

        [DllImport("EUCPComm.dll", EntryPoint = "SendScheSMS")]  // 定时发送
        public static extern int _SendScheSMS(string sn, string mn, string ct, string ti, string priority);

        [DllImport("EUCPComm.dll", EntryPoint = "SendScheSMSEx")]  // 定时发送(扩展)
        public static extern int _SendScheSMSEx(string sn, string mn, string ct, string ti, string addi, string priority);

        [DllImport("EUCPComm.dll", EntryPoint = "ReceiveSMS")]  // 接收短信
        public static extern int _ReceiveSMS(string sn, deleSQF mySmsContent);

        [DllImport("EUCPComm.dll", EntryPoint = "ReceiveSMSEx")]  // 接收短信
        public static extern int _ReceiveSMSEx(string sn, deleSQF mySmsContent);

        [DllImport("EUCPComm.dll", EntryPoint = "ReceiveStatusReport")]  // 接收短信报告
        public static extern int _ReceiveStatusReport(string sn, delegSMSReport mySmsReport);

        [DllImport("EUCPComm.dll", EntryPoint = "ReceiveStatusReportEx")]  // 接收短信报告(带批量ID)
        public static extern int _ReceiveStatusReportEx(string sn, delegSMSReportEx mySmsReportEx);

        [DllImport("EUCPComm.dll", EntryPoint = "Register")]   // 注册 
        public static extern int _Register(string sn, string pwd, string EntName, string LinkMan, string Phone, string Mobile, string Email, string Fax, string sAddress, string Postcode);

        [DllImport("EUCPComm.dll", EntryPoint = "GetBalance", CallingConvention = CallingConvention.Winapi)] // 余额 
        public static extern int _GetBalance(string m, System.Text.StringBuilder balance);


        [DllImport("EUCPComm.dll", EntryPoint = "ChargeUp")]  // 存值
        public static extern int _ChargeUp(string sn, string acco, string pass);

        [DllImport("EUCPComm.dll", EntryPoint = "GetPrice")]  // 价格
        public static extern int _GetPrice(string m, System.Text.StringBuilder balance);

        [DllImport("EUCPComm.dll", EntryPoint = "RegistryTransfer")]  //申请转接
        public static extern int _RegistryTransfer(string sn, string mn);

        [DllImport("EUCPComm.dll", EntryPoint = "CancelTransfer")]  // 注销转接
        public static extern int _CancelTransfer(string sn);

        [DllImport("EUCPComm.dll", EntryPoint = "UnRegister")]  // 注销
        public static extern int _UnRegister(string sn);

        [DllImport("EUCPComm.dll", EntryPoint = "SetProxy")]  // 设置代理服务器 
        public static extern int _SetProxy(string IP, string Port, string UserName, string PWD);

        [DllImport("EUCPComm.dll", EntryPoint = "RegistryPwdUpd")]  // 修改序列号密码
        public static extern int _RegistryPwdUpd(string sn, string oldPWD, string newPWD);

        [DllImport("EUCPComm.dll", EntryPoint = "SetKey")]  // 用全局变量代理硬盘序列号，以试其他机器使用
        public static extern int _SetKey(string Key);

        #endregion

        #region 代理

        /// <summary>
        /// 回调(接收短信)
        /// </summary>
        /// <param name="FromMobile"></param>
        /// <param name="SenderAdditionalNumber"></param>
        /// <param name="ReceiveAdditionalNumber"></param>
        /// <param name="Content"></param>
        /// <param name="SendTime"></param>
        /// <param name="Flag">结果为 0 是有短信，否则无</param>
        private void getSMSContent(string FromMobile, string SenderAdditionalNumber, string ReceiveAdditionalNumber, string Content, string SendTime, ref int Flag)
        {
            if (Flag != 1)
            {
                return;
            }

            rsc.Add(FromMobile, Content);
        }

        public delegate void deleSQF(string FromMobile, string SenderAdditionalNumber, string ReceiveAdditionalNumber, string Content, string SendTime, ref int Flag);
        //deleSQF mySmsContent = new deleSQF(getSMSContent);

        //回调(接收状态报告)
        private void getSMSReport(string mobile, string errorCode, string serviceCodeAdd, string reportType, ref int flag)
        {
        }

        public delegate void delegSMSReport(string mobile, string errorCode, string serviceCodeAdd, string reportType, ref int flag);
        //delegSMSReport mySmsReport = new delegSMSReport(getSMSReport);

        //回调(接收状态报告)带批量ID
        private void getSMSReportEx(ref long seq, string mobile, string errorCode, string serviceCodeAdd, string reportType, ref int flag)
        {
        }

        public delegate void delegSMSReportEx(ref long seq, string mobile, string errorCode, string serviceCodeAdd, string reportType, ref int flag);
        //delegSMSReportEx mySmsReportEx = new delegSMSReportEx(getSMSReportEx);

        #endregion

        #region 辅助方法：按最多一次发送 1000 个手机号码拆分号码列表，按一次最多发送 140 个字符 (70 个汉字) 拆分消息内容

        private string[] SplitMobiles(string MobilesList)
        {
            MobilesList = MobilesList.Trim();

            if (MobilesList == "")
            {
                return null;
            }

            string[] t_strs = MobilesList.Split(',');

            if (t_strs == null)
            {
                return null;
            }

            if (t_strs.Length < 1)
            {
                return null;
            }

            ArrayList al = new ArrayList();

            for (int i = 0; i < t_strs.Length; i++)
            {
                if (t_strs[i].Trim() != "")
                {
                    al.Add(t_strs[i].Trim());
                }
            }

            if (al.Count == 0)
            {
                return null;
            }

            string[] Result = new string[((int)(al.Count / 1000)) + 1];

            for (int i = 0; i < Result.Length; i++)
            {
                Result[i] = "";
            }

            for (int i = 0; i < al.Count; i++)
            {
                Result[(int)(i / 1000)] += al[i].ToString() + ",";
            }

            for (int i = 0; i < Result.Length; i++)
            {
                if (Result[i].EndsWith(","))
                {
                    Result[i] = Result[i].Substring(0, Result[i].Length - 1);
                }
            }

            return Result;
        }

        private string[] SplitContent(string Content)
        {
            Content = Content.Trim();

            if (Content == "")
            {
                return null;
            }

            ArrayList al = new ArrayList();
            string t_str = "";

            for (int i = 0; i < Content.Length; i++)
            {
                string tt_str = Content[i].ToString();
                int t_len = GetCharASCIICharNum(tt_str);

                if (GetCharASCIICharNum(t_str) + t_len > 140)
                {
                    al.Add(t_str);
                    t_str = tt_str;
                }
                else
                {
                    t_str += tt_str;
                }
            }

            if (t_str != "")
            {
                al.Add(t_str);
            }

            if (al.Count == 0)
            {
                return null;
            }

            string[] Result = new string[al.Count];

            for (int i = 0; i < al.Count; i++)
            {
                Result[i] = al[i].ToString();
            }

            return Result;
        }

        private int GetCharASCIICharNum(string str)
        {
            int intLen = str.Length;
            char[] chars = str.ToCharArray();

            for (int i = 0; i < chars.Length; i++)
            {
                if ((long)chars[i] >= 127)
                {
                    intLen++;
                }
            }

            return intLen;
        }

        private int CharAt(string str, char ch)
        {
            int at = 0;

            for (int i = 0; i < str.Length; i++)
            {
                if (str[i] == ch)
                {
                    at++;
                }
            }

            return at;
        }

        #endregion

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="UserPassword"></param>
        /// <param name="ReturnDescription"></param>
        /// <returns></returns>
        public CallResult Register()
        {
            int Result = _Register(UserName, UserPassword, "1", "1", "1", "1", "1", "1", "1", "1");

            return new CallResult(Result);
        }

        /// <summary>
        /// 注销注册
        /// </summary>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public CallResult UnRegister()
        {
            int Result = _UnRegister(UserName);

            return new CallResult(Result);
        }

        /// <summary>
        /// 充值
        /// </summary>
        /// <param name="UserName">账户名</param>
        /// <param name="ChargeCardNumber">充值卡号</param>
        /// <param name="ChargeCardPassword">充值卡密码</param>
        /// <returns></returns>
        public CallResult Charge(string ChargeCardNumber, string ChargeCardPassword)
        {
            int Result = _ChargeUp(UserName, ChargeCardNumber, ChargeCardPassword);

            return new CallResult(Result);
        }

        /// <summary>
        /// 获取余额
        /// </summary>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public CallResult GetBalance()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder(20);
            int Result = _GetBalance(UserName, sb);

            CallResult cr = new CallResult(Result);

            if (cr.Code == 0)
            {
                cr.Value = sb.ToString(0, sb.Length - 2);
            }

            return cr;
        }

        /// <summary>
        /// 获取单价
        /// </summary>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public CallResult GetPrice()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder(20);

            int Result = _GetPrice(UserName, sb);

            CallResult cr = new CallResult(Result);

            if (cr.Code == 0)
            {
                cr.Value = sb.ToString();
            }

            return cr;
        }

        /// <summary>
        /// 设置代理
        /// </summary>
        /// <param name="HostNameOrIPAddress"></param>
        /// <param name="Port"></param>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>
        public CallResult SetProxy(string HostNameOrIPAddress, string Port, string HostUserName, string HostUserPassword)
        {
            int Result = _SetProxy(HostNameOrIPAddress, Port, HostUserName, HostUserPassword);

            return new CallResult(Result);
        }

        /// <summary>
        /// 发送消息(即时)
        /// </summary>
        /// <param name="ToMobile"></param>
        /// <param name="Content"></param>
        /// <returns></returns>
        public CallResult Send(string ToMobile, string Content)
        {
            int Result = _SendSMS(UserName, ToMobile, Content, "5");

            CallResult cr = new CallResult(Result);

            if (Result == 109)
            {
                cr.Code = 0;
                cr.Value = 109;
            }

            return cr;
        }

        /// <summary>
        /// 发送消息(即时)
        /// </summary>
        /// <param name="ToMobile"></param>
        /// <param name="Content"></param>
        /// <param name="AdditionalNumber">附加号码</param>
        /// <returns></returns>
        public CallResult SendEx(string ToMobile, string Content, string AdditionalNumber)
        {
            int Result = _SendSMSEx(UserName, ToMobile, Content, AdditionalNumber, "5");

            CallResult cr = new CallResult(Result);

            if (Result == 109)
            {
                cr.Code = 0;
                cr.Value = 109;
            }

            return cr;
        }

        /// <summary>
        /// 发送消息(定时)
        /// </summary>
        /// <param name="ToMobile"></param>
        /// <param name="Content"></param>
        /// <param name="SendTime"></param>
        /// <returns></returns>
        public CallResult Send(string ToMobile, string Content, DateTime SendTime)
        {
            int Result = _SendScheSMS(UserName, ToMobile, Content, SendTime.ToString("yyyy-MM-dd hh:mm:ss"), "5");

            CallResult cr = new CallResult(Result);

            if (Result == 109)
            {
                cr.Code = 0;
                cr.Value = 109;
            }

            return cr;
        }

        /// <summary>
        /// 发送消息(定时)
        /// </summary>
        /// <param name="ToMobile"></param>
        /// <param name="Content"></param>
        /// <param name="AdditionalNumber">附加号码</param>
        /// <returns></returns>
        public CallResult SendEx(string ToMobile, string Content, DateTime SendTime, string AdditionalNumber)
        {
            int Result = _SendScheSMSEx(UserName, ToMobile, Content, SendTime.ToString("yyyy-MM-dd hh:mm:ss"), AdditionalNumber, "5");

            CallResult cr = new CallResult(Result);

            if (Result == 109)
            {
                cr.Code = 0;
                cr.Value = 109;
            }

            return cr;
        }

        /// <summary>
        /// 申请转接服务
        /// </summary>
        /// <param name="Mobile"></param>
        /// <returns></returns>
        public CallResult RegistryTransfer(string Mobile)
        {
            int Result = _RegistryTransfer(UserName, Mobile);

            return new CallResult(Result);
        }

        /// <summary>
        /// 注销转接服务
        /// </summary>
        /// <param name="Mobile"></param>
        /// <returns></returns>
        public CallResult CancelTransfer()
        {
            int Result = _CancelTransfer(UserName);

            return new CallResult(Result);
        }

        /// <summary>
        /// 接收短信
        /// </summary>
        /// <returns></returns>
        public CallResult ReceiveSMS()
        {
            this.rsc.Clear();

            deleSQF mySmsContent = new deleSQF(getSMSContent);

            int Result = 2;
            int Count = 0;

            while (Result == 2)  //当result = 2 时，说明还有下一批短信等待接收，这时需重新再调用一次 ReceiveSMS 方法
            {
                Result = _ReceiveSMS(UserName, mySmsContent);

                if ((Result == 2) || (Result == 1))
                {
                    Count++;
                }
            }

            CallResult cr = new CallResult(Result);
            cr.Value = Count.ToString();

            return cr;
        }

        /// <summary>
        /// 接收短信
        /// </summary>
        /// <returns></returns>
        public CallResult ReceiveSMSEx()
        {
            this.rsc.Clear();

            deleSQF mySmsContent = new deleSQF(getSMSContent);

            int Result = 2;
            int Count = 0;

            while (Result == 2) //当result = 2 时，说明还有下一批短信等待接收，这时需重新再调用一次ReceiveSMSEx方法
            {
                Result = _ReceiveSMSEx(UserName, mySmsContent);

                if ((Result == 2) || (Result == 1))
                {
                    Count++;
                }
            }

            CallResult cr = new CallResult(Result);
            cr.Value = Count.ToString();

            return cr;
        }

        /// <summary>
        /// 接收短信报告
        /// </summary>
        /// <returns></returns>
        public CallResult ReceiveStatusReport()
        {
            delegSMSReport mySmsReport = new delegSMSReport(getSMSReport);

            int Result = 2;
            int Count = 0;

            while (Result == 2) //当result = 2 时，说明还有下一批短信等待接收，这时需重新再调用一次ReceiveStatusReport方法
            {
                Result = _ReceiveStatusReport(UserName, mySmsReport);

                if ((Result == 2) || (Result == 1))
                {
                    Count++;
                }
            }

            CallResult cr = new CallResult(Result);
            cr.Value = Count.ToString();

            return cr;
        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="NewPassword"></param>
        /// <returns></returns>
        public CallResult RegistryPwdUpd(string NewPassword)
        {
            //修改序列号密码         这里是软件序列号  
            int Result = _RegistryPwdUpd(UserName, UserPassword, NewPassword);

            if (Result == 1)
            {
                SetPassword(NewPassword);
            }

            return new CallResult(Result);
        }

        /// <summary>
        /// 用全局变量代理硬盘序列号，以试其他机器使用。在调用 Register 方法之前调用这个方法，那么注册时绑定到账号就不是取的硬盘序列号，而是自己指定的这个 Key 了。
        /// </summary>
        /// <param name="Key"></param>
        /// <returns></returns>
        public CallResult SetKey(string Key)
        {
            int Result = _SetKey(Key);

            return new CallResult(Result);
        }
    }
}
