using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.DataAccessLayer
{
   public class Repository
    {
       AutoDeployEntities context = new AutoDeployEntities();
       //-- Build-- 

       #region Build

       public List<Build> GetBuildList(int id)
       {
           return context.Build.Where(a => a.ID == id).ToList();
       }

       public void CreateBuild(Build source)
       {
           context.Build.AddObject(source);
       }


       #endregion
       //-- BuildTypes-- 

       #region BuildTypes

       public List<BuildTypes> GetBuildTypesList(int id)
       {
           return context.BuildTypes.Where(a => a.ID == id).ToList();
       }

       public void CreateBuildTypes(BuildTypes source)
       {
           context.BuildTypes.AddObject(source);
       }


       #endregion
       //-- Deploy-- 

       #region Deploy

       public List<Deploy> GetDeployList(int id)
       {
           return context.Deploy.Where(a => a.ID == id).ToList();
       }

       public void CreateDeploy(Deploy source)
       {
           context.Deploy.AddObject(source);
       }


       #endregion
       //-- DeploymentServers-- 

       #region DeploymentServers

       public List<DeploymentServers> GetDeploymentServersList()
       {
           return context.DeploymentServers.ToList();
       }

       public void CreateDeploymentServers(DeploymentServers source)
       {
           context.DeploymentServers.AddObject(source);
           context.SaveChanges();
       }


       #endregion
       //-- Package-- 

       #region Package

       public List<Package> GetPackageList(int id)
       {
           return context.Package.Where(a => a.ID == id).ToList();
       }

       public void CreatePackage(Package source)
       {
           context.Package.AddObject(source);
       }


       #endregion
       //-- ProjectDetails-- 

       #region ProjectDetails

       public List<ProjectDetails> GetProjectDetailsList(int id)
       {
           return context.ProjectDetails.Where(a => a.ID == id).ToList();
       }

       public void CreateProjectDetails(ProjectDetails source)
       {
           context.ProjectDetails.AddObject(source);
           context.AcceptAllChanges();
       }


       #endregion
       //-- Release-- 

       #region Release

       public List<Release> GetReleaseList(int id)
       {
           return context.Release.Where(a => a.ID == id).ToList();
       }

       public void CreateRelease(Release source)
       {
           context.Release.AddObject(source);
       }


       #endregion
       //-- ReleasePackage-- 

       #region ReleasePackage

       public List<ReleasePackage> GetReleasePackageList(int id)
       {
           return context.ReleasePackage.Where(a => a.ID == id).ToList();
       }

       public void CreateReleasePackage(ReleasePackage source)
       {
           context.ReleasePackage.AddObject(source);
       }


       #endregion
       //-- Role-- 

       #region Role

       public List<Role> GetRoleList(int id)
       {
           return context.Role.Where(a => a.ID == id).ToList();
       }

       public void CreateRole(Role source)
       {
           context.Role.AddObject(source);
       }


       #endregion
       //-- Status-- 

       #region Status

       public List<Status> GetStatusList(int id)
       {
           return context.Status.Where(a => a.ID == id).ToList();
       }

       public void CreateStatus(Status source)
       {
           context.Status.AddObject(source);
       }


       #endregion
       //-- TestCaseDetails-- 

       #region TestCaseDetails

       public List<TestCaseDetails> GetTestCaseDetailsList(int id)
       {
           return context.TestCaseDetails.Where(a => a.ID == id).ToList();
       }

       public void CreateTestCaseDetails(TestCaseDetails source)
       {
           context.TestCaseDetails.AddObject(source);
       }


       #endregion
       //-- UITestCasesDetails-- 

       #region UITestCasesDetails

       public List<UITestCasesDetails> GetUITestCasesDetailsList(int id)
       {
           return context.UITestCasesDetails.Where(a => a.ID == id).ToList();
       }

       public void CreateUITestCasesDetails(UITestCasesDetails source)
       {
           context.UITestCasesDetails.AddObject(source);
       }


       #endregion
       //-- User-- 

       #region User

       public List<User> GetUserList(int id)
       {
           return context.User.Where(a => a.ID == id).ToList();
       }

       public void CreateUser(User source)
       {
           context.User.AddObject(source);
       }


       #endregion
       //-- VersionControlDetails-- 

       #region VersionControlDetails

       public List<VersionControlDetails> GetVersionControlDetailsList()
       {
           return context.VersionControlDetails.ToList();
       }

       public void CreateVersionControlDetails(VersionControlDetails source)
       {
           context.VersionControlDetails.AddObject(source);
           context.SaveChanges();
       }


       #endregion
       //-- VersionControlType-- 

       #region VersionControlType

       public List<VersionControlType> GetVersionControlTypeList()
       {
           return context.VersionControlType.ToList();
       }

       public void CreateVersionControlType(VersionControlType source)
       {
           context.VersionControlType.AddObject(source);
       }


       #endregion

    }
}
