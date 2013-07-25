<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CreateNewBuild.aspx.cs" Inherits="AutoDeploy.UI.CreateNewBuild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <span>Build Version</span>
    <br />
    <input id="txtBuildVersion" type="text" runat="server" />
    <br />
    <input id="btnBuildVersion" type="button" runat="server" value="Create" onclick="btnBuildVersion_Click()" />
    <div class="getCodeProgress">
        <img src="Images/loading.gif" />
    </div>
    <div class="getCodeResult">
        <span class="spanResult"></span>
    </div>
    <script type="text/javascript" language="javascript">

        function btnBuildVersion_Click() {
            $("#getCodeProgress").show();
            var buildVersion = $("#txtBuildVersion").val();
            if(buildVersion != ""){
                var params = { CreateBuildVerstion: buildVersion };
                AjaxPost("CreateNewBuild.aspx/btnBuildVersion_Click", params, function (response) {
                    $("#getCodeProgress").hide();
                    $("#getCodeResult").html(response.d);
                }, function () {
                    alert("fail");
                });
            }
        }
    </script>
</asp:Content>
