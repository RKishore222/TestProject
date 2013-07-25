using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using AutoDeploy.BusinessObjects;
using AutoDeploy.DataAccessLayer;
using System.Data.Objects.DataClasses;

namespace AutoDeploy.UI
{
    public partial class Settings : System.Web.UI.Page
    {

        public static Repository DB
        {
            get
            {
                return new Repository();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            ddlVC.DataSource = DB.GetVersionControlTypeList();
            ddlVC.DataTextField = "Name";
            ddlVC.DataValueField = "ID";
            ddlVC.DataBind();
            BindServers();
        }
        [WebMethod]
        private static void btnVCSave_Click()
        {
        }

       
        protected void btnSave_Click(object sender, EventArgs e)
        {
            CreateDeployServer();
            BindServers();
        }

        private void CreateDeployServer()
        {

            DeploymentServers objDS = new DeploymentServers();
            objDS.ServerName = txtServerName.Text;
            objDS.UserName = txtServerUserName.Text;
            objDS.Password = txtServerPassword.Text;
            objDS.DomainUrl = txtDomainUrl.Text;
            objDS.Description = txtDescription.Text;
            objDS.CreatedDate = DateTime.Now;

            DB.CreateDeploymentServers(objDS);
        }



        protected void btnVCSave_Click1(object sender, EventArgs e)
        {
            SaveVersionControlDetails();
        }

        private void SaveVersionControlDetails()
        {

            VersionControlDetails objVCBO = new VersionControlDetails();
            objVCBO.Name = txtName.Text;
            objVCBO.VersionControlTypeID = int.Parse(ddlVC.SelectedValue);
            objVCBO.DominAddress = txtVcAddress.Text;
            objVCBO.UserName = txtUserName.Text;
            objVCBO.Password = txtPassword.Text;
            objVCBO.CreatedDate = DateTime.Now;

            DB.CreateVersionControlDetails(objVCBO);
        }

        private void BindServers()
        {
            grdServers.DataSource = DB.GetDeploymentServersList();
            grdServers.DataBind();
        }
    }
}