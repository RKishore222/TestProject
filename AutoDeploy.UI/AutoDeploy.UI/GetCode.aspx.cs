using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AutoDeploy.BusinessObjects;
using System.Web.Services;
using AutoDeploy.Build;
using AutoDeploy.Utilities;
using System.Configuration;
using AutoDeploy.Deploy;
using AutoDeploy.Code;
using AutoDeploy.DataAccessLayer;

namespace AutoDeploy.UI
{
    public partial class GetCode : System.Web.UI.Page
    {
        public static string ProjectLoaction
        {
            get
            {
                return ConfigurationManager.AppSettings["ProjectLocation"].ToString();
            }
        }
        public static Repository _repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            //ConfigurationManager.AppSettings["Package"].ToString();
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            //GetBuild.Visible = false;

        }

        private static string GetCodeFromTFS()
        {
            TfsGetCodeParams objTfsGetCodeParams = new TfsGetCodeParams();
            ProjectDetails _project = _repository.GetProjectDetails(1);
            objTfsGetCodeParams.TFSAddress = _project.VersionControl.Address;       //"https://northalley.visualstudio.com/defaultcollection";
            objTfsGetCodeParams.ProjectName = _project.ProjectName;//"PaymentPlan2.0_P1";
            objTfsGetCodeParams.SourcePath = _project.SourcePath;// @"$/PaymentPlan2.0_P1/MyAccount";
            objTfsGetCodeParams.TargetPath = _project.TargetPath;//@"D:/Test/TFSTest";
            objTfsGetCodeParams.WorkStationName = "test";
            objTfsGetCodeParams.TFSGetCodeType = GetCodeType.LatestVersion;

            GetLatestCodeFromTFS objGetLatestCode = new GetLatestCodeFromTFS();

            return objGetLatestCode.LatestVersion(objTfsGetCodeParams);
        }

        [WebMethod]
        public static string getCode_Click()
        {
            return GetCodeFromTFS();
        }

        [WebMethod]
        public string GetBuild_Click()
        {
            string[] solutionfiles = Common.GetFiles(ProjectLoaction, "sln");
            foreach (var item in solutionfiles)
            {

                ProjectDetails _project = _repository.GetProjectDetails(1);
                DotnetBuildParams objDotnetBuildParams = new DotnetBuildParams();
                objDotnetBuildParams.Configuration = _project.Configuration;
                objDotnetBuildParams.Platform = _project.PlatForm;
                objDotnetBuildParams.TargetsToBuild = new string[] { "Build" };
                objDotnetBuildParams.OutputPath = ProjectLoaction+"/"+_project.ReleaseVersion.LastOrDefault().ReleaseVersion1 ;
                objDotnetBuildParams.projectFileName = item;// @"D:\Automa.tion\TFS2010FromCSharp\TFS2010\TFS2010.sln";//D:\Test\TFSTest\OfficialPayments.MyAccount.sln";
                var result = DotNetBuild.Start(objDotnetBuildParams);
            }
            return "Success";
        }

        [WebMethod]
        public static string GetTestRun_Click()
        {
            string[] testCasesFiles = Common.GetFiles(ProjectLoaction, "vsmdi");
            foreach (var item in testCasesFiles)
            {
                CommandArgs objCommandArgs = new CommandArgs();
                objCommandArgs.command = "";
                var result = Subprocess.RunProgram(objCommandArgs);
            }
            return "Success";
        }

        [WebMethod]
        public static string Test()
        {
            return "ok";
        }

        [WebMethod]
        public string Deploy_Click()
        {
            PackageParms objPackageParms = new PackageParms();
            ProjectDetails _project = _repository.GetProjectDetails(1);
            objPackageParms.ProjectPath = "";
            objPackageParms.ConfigurationType = _project.Configuration;
            objPackageParms.Platform = _project.PlatForm;
            objPackageParms.PackageLocation = @"C:\MyPackage\Package.Zip";
            DotNetPackage.Packaging(objPackageParms);
            return "Success";
        }
    }
}