<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectSetting.aspx.cs"
    MasterPageFile="~/Site.Master" Inherits="AutoDeploy.UI.ProjectSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Create Project </legend>
            <table border="0" cellpadding="5" cellspacing="0">
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtName" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDescription" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Source Control:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlSC" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Project Path:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPrjtPath" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Solution Path:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSlnpath" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Platform:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlPlatform" runat="server">
                            <asp:ListItem Text="AnyCPU" Value="AnyCPU"></asp:ListItem>
                            <asp:ListItem Text="X86" Value="X86"></asp:ListItem>
                            <asp:ListItem Text="X64" Value="X64"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Configuration:
                    </td>
                    <td>
                         <asp:DropDownList ID="ddlConfiguration" runat="server">
                            <asp:ListItem Text="Debug" Value="Debug"></asp:ListItem>
                            <asp:ListItem Text="Release" Value="Release"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button Text="Create" runat="server" ID="BtnCreate" OnClick="BtnCreate_Click" />
                    </td>
                </tr>
            </table>
            <legend>Project List</legend>
            <div>
                <asp:GridView runat="server" ID="ProjectListGridView">
                    <Columns>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:LinkButton ID="Lnkpjct" runat="server" Value="Project"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Source Control"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Project"></asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </fieldset>
    </div>
</asp:Content>
