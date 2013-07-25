using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Build.Evaluation;
using Microsoft.Build.Execution;
using AutoDeploy.BusinessObjects;

namespace AutoDeploy.Build
{
    public class DotNetBuild
    {
        public static string Start(DotnetBuildParams objBuildParams)
        {
            try
            {
                ProjectCollection pc = new ProjectCollection();

                pc.DefaultToolsVersion = "4.0";
                Dictionary<string, string> GlobalProperty = new Dictionary<string, string>();

                GlobalProperty.Add("Configuration", objBuildParams.Configuration);

                GlobalProperty.Add("Platform", objBuildParams.Platform);



                //Here, we set the property

                GlobalProperty.Add("OutputPath", objBuildParams.OutputPath);

                BuildRequestData BuidlRequest = new BuildRequestData(objBuildParams.projectFileName, GlobalProperty, null, objBuildParams.TargetsToBuild, null);

                BuildResult buildResult = BuildManager.DefaultBuildManager.Build(new BuildParameters(pc), BuidlRequest);

                return  ((BuildResultCode)buildResult.OverallResult).ToString();


            }
            catch (Exception ex)
            {
                return BuildResultCode.Failure.ToString() ;
            }
            finally
            {
                
            }

        }
    }
}
