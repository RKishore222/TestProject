using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoDeploy.BusinessObjects;
using System.Configuration;
using AutoDeploy.Utilities;

namespace AutoDeploy.Deploy
{
    public class DotNetPackage
    {

        public static SubprocessResult Packaging(PackageParms objPackageParms)
        {
            CommandArgs objCommandArgs = new CommandArgs();
            objCommandArgs.command = "cmd.exe";
            objCommandArgs.Args = GetPackageArgs(objPackageParms);
            return Subprocess.RunProgram(objCommandArgs);

        }

        private static string GetPackageArgs(PackageParms objPackageParms)
        {
            string packageCommand = string.Empty;
            string pacCommand = ConfigurationManager.AppSettings["Package"].ToString();
            packageCommand = string.Format(pacCommand, GetTargetCommand(), objPackageParms.ProjectPath, 
                objPackageParms.ConfigurationType, objPackageParms.Platform, objPackageParms.PackageLocation);
            return packageCommand;
        }

        private static string GetTargetCommand()
        {
            return ConfigurationManager.AppSettings["MsBuildLocaion"].ToString();
        }


    }
}
