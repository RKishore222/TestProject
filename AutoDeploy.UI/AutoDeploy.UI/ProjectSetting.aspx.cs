using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AutoDeploy.DataAccessLayer;

namespace AutoDeploy.UI
{
    public partial class ProjectSetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Repository db = new Repository();
            ProjectDetails prjtdetails = new ProjectDetails();
            
        }
    }
}