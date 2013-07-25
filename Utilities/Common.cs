using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace AutoDeploy.Utilities
{
    public class Common
    {

        public static string[] GetFiles(string folderPath, string extenstion)
        {
            return Directory.GetFiles(folderPath, "*." + extenstion);
        }
    }
}
