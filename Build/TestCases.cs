using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoDeploy.Utilities;
using AutoDeploy.BusinessObjects;

namespace AutoDeploy.Build.Dotnet
{
    public class TestCases
    {
        public static void Run(CommandArgs objCommandArgs)
        {
           Subprocess.RunProgram(objCommandArgs);
        }
    }
}
