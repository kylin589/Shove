using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Net;
using System.IO;
using System.IO.Compression;

namespace SZJS.ElectronTicketbase.Task
{
    public class PublicFunction
    {
        public static string GetCallCert()
        {
            string Result = "";

            Result = "ShoveSoft";
            Result += " ";
            Result += "CO.,Ltd ";

            string Result2 = Shove._String.Reverse(Result);

            Result = "--";
            Result += " by Shove ";

            Result = Shove._String.Reverse(Result2) + Result;

            Result2 = Shove._String.Reverse(Result);

            Result = "20050709";
            Result += Shove._String.Reverse("圳深 ");
            Result += Shove._String.Reverse("安宝");

            Result = Shove._String.Reverse(Result);

            Result = Shove._String.Reverse(Result2) + Shove._String.Reverse(Result);

            return Result;
        }

        // 获取 Url 返回的 Html 流
        public static string Post(string Url, string RequestString, int TimeoutSeconds)
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
            StreamReader sr = new StreamReader(hwrp.GetResponseStream(), System.Text.Encoding.GetEncoding("GBK")); ;
            return sr.ReadToEnd();
        }

        public static string Post(string Url, string xmlStr, string key)
        {
            Encoding encoding = Encoding.GetEncoding("UTF-8");
            string strUrl = Url;
            byte[] data = encoding.GetBytes(key + xmlStr);

            // 准备请求...
            HttpWebRequest myRequest = (HttpWebRequest)WebRequest.Create(strUrl);

            myRequest.Method = "POST";
            myRequest.ContentType = "text/xml";
            myRequest.ContentLength = data.Length;
            Stream newStream = myRequest.GetRequestStream();
            // 发送数据
            newStream.Write(data, 0, data.Length);
            newStream.Close();
            // 接受返回数据
            WebResponse result = myRequest.GetResponse();
            Stream ReceiveStream = result.GetResponseStream();
            Encoding encode = Encoding.GetEncoding("UTF-8");
            StreamReader sr = new StreamReader(ReceiveStream, encode);
            return sr.ReadToEnd();
        }
    }
}
