using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.BusinessObjects
{
    public class CommandArgs
    {
        public string  command { get; set; }

        public string Args { get; set; }

        public int TimeOut { get; set; }
    }
}

