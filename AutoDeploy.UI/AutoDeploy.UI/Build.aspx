<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Build.aspx.cs" Inherits="AutoDeploy.UI.Build" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
       <fieldset>
            <legend>
                <medium class="bold">New Release Details</medium>
            </legend>
            <table border="0" cellpadding="5" cellspacing="0">
              <tr>
                    <td>
                        Project Name:
                    </td>
                    <td>
                        <asp:Label ID="lblProjectName" runat="server" />
                    </td>
                </tr>
             <tr>
                    <td>
                        Release Version :
                    </td>
                    <td>
                        <asp:TextBox ID="txtProjDisplayName" runat="server" />
                    </td>
                </tr>
              
              
                <tr >
                    <td>
                    </td>
                    <td>
                        <asp:Button Text="Create" ID="btnProjectDetails" OnClientClick="btnProjectDetails_Click"
                            runat="server" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
