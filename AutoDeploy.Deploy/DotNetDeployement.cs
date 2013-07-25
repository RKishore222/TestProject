using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoDeploy.BusinessObjects;
using System.Configuration;
using AutoDeploy.Utilities;

namespace AutoDeploy.Deploy
{
    public class DotNetDeploy
    {

        public SubprocessResult Deploying(DeployParms objDeployeParms)
        {
            CommandArgs objCommandArgs = new CommandArgs();
            objCommandArgs.command = "cmd.exe";
            objCommandArgs.Args = GetDeployArgs(objDeployeParms);
            return Subprocess.RunProgram(objCommandArgs);

        }

        private string GetDeployArgs(DeployParms objDeployeParms)
        {
             string Packagelocation="";// we need to give the package locaion
             string[] DeployeCmdFile=  Common. GetFiles(Packagelocation, ".cmd");
            string packageCommand = string.Empty;
            string pacCommand = ConfigurationManager.AppSettings["Deploy"].ToString();
            packageCommand = string.Format(pacCommand, GetTargetCommand(), DeployeCmdFile.First()); 
            return packageCommand;
        }

        private string GetTargetCommand()
        {
            return ConfigurationManager.AppSettings["MsDeployeLocation"].ToString();
        }

        
    }
}
