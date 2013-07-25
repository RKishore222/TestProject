using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.BusinessObjects
{
    public  class TfsGetCodeParams
    {
        public string  TFSAddress { get; set; }

        public GetCodeType TFSGetCodeType { get; set; }

        public string  SourcePath { get; set; }

        public string  TargetPath { get; set; }

        public string  ProjectName { get; set; }

        public string WorkStationName { get; set; }

        public int[] ChangeSetNumbers { get; set; }

        public decimal BuildVersion { get; set; }

    }
}
