<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Settings.aspx.cs"
    Inherits="AutoDeploy.UI.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>
                <medium class="bold">Version Control Deails</medium>
            </legend>
            <table border="0" cellpadding="5" cellspacing="0">
              <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Version Control:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlVC" runat="server">
                            <asp:ListItem Value="0" Text="--Select--"></asp:ListItem>
                            <asp:ListItem Value="1" Text="TFS"></asp:ListItem>
                            <asp:ListItem Value="2" Text="SVN"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        User Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Version Control Address:
                    </td>
                    <td>
                        <asp:TextBox ID="txtVcAddress" runat="server" Width="254px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Domain Address:
                    </td>
                    <td>
                        <asp:TextBox ID="txtDomain" runat="server" Width="253px" />
                    </td>
                </tr>
                  <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button Text="Save" ID="btnVCSave" runat="server" 
                                    onclick="btnVCSave_Click1" />
                            </td>
                        </tr>
            </table>
        </fieldset>
        <div class="getCodeProgress">
            <img src="Images/loading.gif" />
        </div>
        <div>
                <fieldset>
                    <legend>
                        <medium class="bold">Deploy Server Details</medium>
                    </legend>
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td>
                                Server Name:
                            </td>
                            <td>
                                <asp:TextBox ID="txtServerName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Description:
                            </td>
                            <td>
                                <asp:TextBox ID="txtDescription" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                User Name :
                            </td>
                            <td>
                                <asp:TextBox ID="txtServerUserName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password :
                            </td>
                            <td>
                                <asp:TextBox ID="txtServerPassword" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Domain Url :
                            </td>
                            <td>
                                <asp:TextBox ID="txtDomainUrl" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                              <asp:Button Text="Create" ID="btnSave" OnClientClick="btnSave_Click" 
            runat="server" onclick="btnSave_Click" />
                            </td>
                        </tr>
                        <tr>
                        <td  colspan="2">
                            <asp:GridView ID="grdServers" runat="server" AutoGenerateColumns="false" >
                            <Columns>
                            <asp:BoundField DataField="ServerName" HeaderText="Server Name" />
                            <asp:BoundField DataField="DomainUrl" HeaderText="Domain Url" />
                            
                            </Columns>
                            </asp:GridView>
                        </td>
                        </tr>
                    </table>
                </fieldset>
            </div>
       
    </div>
    <script type="text/javascript" language="javascript">

        function btnBuildVersion_Click() {
            $("#getCodeProgress").show();
            AjaxPost("CreateNewBuild.aspx/btnVCSave_Click", params, function (response) {
                $("#getCodeProgress").hide();
                $("#getCodeResult").html(response.d);
            }, function () {
                alert("fail");
            });
        }

        function GetData() {

            var versionControl = $("#versionControl").val();
            var userName = $("#txtUserName").val();
            var password = $("#txtPassword").val();

        }

        function Filldata() {

        }
    
    </script>
</asp:Content>
