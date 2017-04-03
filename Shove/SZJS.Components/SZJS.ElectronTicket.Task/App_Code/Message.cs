using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Messaging;

namespace SZJS.ElectronTicket.Task
{
    public class Message
    {
        private string MessageType = "";

        public Message(string messagetype)
        {
            MessageType = messagetype;
        }

        public void Send(string Msg)
        {
            string QueuePath = ".\\private$\\SZJS_Allcai_Task_" + MessageType;

            if (!MessageQueue.Exists(QueuePath))
            {
                return;
            }

            MessageQueue mq = null;

            try
            {
                mq = new MessageQueue(QueuePath);
            }
            catch
            {
                return;
            }

            if (mq == null)
            {
                return;
            }

            System.Messaging.Message m = new System.Messaging.Message();

            m.Body = Msg;
            m.Formatter = new System.Messaging.BinaryMessageFormatter();

            mq.Send(m);
        }
    }
}
