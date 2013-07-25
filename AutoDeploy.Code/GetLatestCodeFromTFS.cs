using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.TeamFoundation.Client;
using Microsoft.TeamFoundation.VersionControl.Client;
using AutoDeploy.BusinessObjects;
using System.IO;

namespace AutoDeploy.Code
{
    public class GetLatestCodeFromTFS : IGetLatestCode
    {

        public string LatestVersion(TfsGetCodeParams objTfsGetCodeParams)
        {
            TfsTeamProjectCollection TFSProjectCollection = null;
            string status = "";
            try
            {
                TFSProjectCollection = TfsTeamProjectCollectionFactory.GetTeamProjectCollection(new Uri(objTfsGetCodeParams.TFSAddress));

                var versionControl = TFSProjectCollection.GetService<VersionControlServer>();

                // VersionSpec versionFrom = ChangeDateFormate(dateTimePicker1.Value);
                // VersionSpec versionTo = ChangeDateFormate(dateTimePicker2.Value);

                TeamProject tp = versionControl.GetTeamProject(objTfsGetCodeParams.ProjectName); //"PaymentPlan2.0_P1");

                switch (objTfsGetCodeParams.TFSGetCodeType)
                {
                    case GetCodeType.LatestVersion:

                        status = GetLatestVerstion(versionControl, objTfsGetCodeParams);
                        break;
                    case GetCodeType.GetSpecificVersion:
                        break;
                    case GetCodeType.Changeset:
                        break;
                    case GetCodeType.ByLabel:
                        break;
                    case GetCodeType.ByDates:
                        break;
                    default:
                        break;
                }
                return status;
            }
            catch (AuthorizationException ex)
            {
                return "Unable to Login to TFS.";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public void versionControl_Getting(object sender, GettingEventArgs e)
        {
            var status = ((GettingEventArgs)e);

        }

        private string GetLatestVerstion(VersionControlServer versionControl, TfsGetCodeParams objTfsGetCodeParams)
        {

            Workspace[] workspaces = versionControl.QueryWorkspaces(objTfsGetCodeParams.WorkStationName, versionControl.AuthenticatedUser, Workstation.Current.Name);
            if (workspaces.Length > 0)
            {
                versionControl.DeleteWorkspace(objTfsGetCodeParams.WorkStationName, versionControl.AuthenticatedUser);
            }
            Workspace workspace = versionControl.CreateWorkspace(objTfsGetCodeParams.WorkStationName, versionControl.AuthenticatedUser, "Temporary Workspace");
            try
            {
                workspace.Map(objTfsGetCodeParams.SourcePath, objTfsGetCodeParams.TargetPath+"/"+objTfsGetCodeParams.BuildVersion );
                GetRequest request = new GetRequest(new ItemSpec(objTfsGetCodeParams.SourcePath, RecursionType.Full), VersionSpec.Latest);
                GetStatus status = workspace.Get(request, GetOptions.GetAll | GetOptions.Overwrite); // this line doesn't do anything - no failures or errors
                return "done";
            }
            finally
            {
                if (workspace != null)
                {
                    workspace.Delete();
                }
            }
        }

        private void GetSpecificVersion(VersionControlServer versionControl, TfsGetCodeParams objTfsGetCodeParams)
        {

        }

        private void GetCodeByLabling(VersionControlServer versionControl, TfsGetCodeParams objTfsGetCodeParams)
        {

        }


        private void GetCodeByChangeSet(VersionControlServer versionControl, TfsGetCodeParams objTfsGetCodeParams)
        {
            foreach (var changeSetId in objTfsGetCodeParams.ChangeSetNumbers)
            {
                Changeset changeSets = versionControl.GetChangeset(changeSetId);

                foreach (var changeSetItem in changeSets.Changes)
                {
                    Item citem = changeSetItem.Item;
                }
            }
        }

        private void GetCodeByDatesRange(VersionControlServer versionControl, TfsGetCodeParams objTfsGetCodeParams)
        {

        }


        private string BuildRelativePath(string sourcePath, string p)
        {
            return p.Replace(sourcePath, "");
        }
        private static VersionSpec ChangeDateFormate(DateTime date)
        {
            string Gvndate = string.Format("D{0:yyy}-{0:MM}-{0:dd}T{0:HH}:{0:mm}", date);
            return VersionSpec.ParseSingleSpec(Gvndate, "");
        }


        void IGetLatestCode.ValidateUser(string username, string password)
        {
            throw new NotImplementedException();
        }
    }
}
