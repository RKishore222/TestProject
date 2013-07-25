<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" MasterPageFile="~/Site.Master" Inherits="AutoDeploy.UI.ProjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
  <fieldset>
  <legend> Project Details</legend>
   
        <table border="0" cellpadding="5" cellspacing="0">
            <tr>
                <td>
                Build Version:
                </td>
                <td>
                    <asp:TextBox runat="server" id="txtBVersion"/></td>
            </tr>
            <tr>
            <td>Note:</td>
            <td>
                <asp:TextBox runat="server" ID="txtNote" TextMode="MultiLine" /></td></tr>
                <tr><td></td>
                <td>
                    <asp:Button Text="Build" runat="server" onclick="Unnamed1_Click" /></td>
                <td>
                    <asp:Button Text="Package" runat="server" /></td></tr>
        </table>
      </fieldset>
    </div>
     
</asp:Content>