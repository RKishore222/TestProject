<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="GetCode.aspx.cs" Inherits="AutoDeploy.UI.GetCode" %>

<asp:Content ID="GetLatestCodeContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 107px;
        }
    </style>
    <script src="Scripts/common.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h3>
        &nbsp;</h3>
    <h3>
        Get code from TFS</h3>
    <table>
        <tr>
            <td>
            </td>
            <td id="tdgetCode">
                <input type="button" id="getCode" runat="server" value="Get Code" onclick="getCode_Click('tdgetCode')" />
                <div class="getCodeProgress">
                    <img src="Images/loading.gif" />
                </div>
                <div class="getCodeResult">
                <span class="spanResult"></span>
                </div>
            </td>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td id="tdGetBuild">
                <input type="button" id="GetBuild" runat="server" value="Build" onclick="GetBuild_Click" />
                <div class="getCodeProgress">
                    <img src="Images/loading.gif" />
                </div>
                <div class="getCodeResult">
                <span class="spanResult"></span>
                </div>
            </td>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="button" id="GetTestRun" runat="server" value="Run Test Cases" onclick="GetTestRun_Click" />
                <div class="getCodeProgress">
                    <img src="Images/loading.gif" />
                </div>
                <div class="getCodeResult">
                <span class="spanResult"></span>
                </div>
            </td>
             <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
             <td>
                <input type="button" id="Deploy" runat="server" value="Deploy" onclick="Deploy_Click" />
                <div class="getCodeProgress">
                    <img src="Images/loading.gif" />
                </div>
                <div class="getCodeResult">
                <span class="spanResult"></span>
                </div>
            </td>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="button" runat="server" id="RunUITestCases" value="Run UI test Cases" onclick="MakeCall()" />
                <span id="spanData"></span>
            </td>
        </tr>
    </table>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $(".getCodeProgress").hide();
            $(".getCodeResult").html("");
        });

        function getCode_Click(tdId) {
            $("#"+tdId).find(".getCodeProgress").show();
            AjaxPost("GetCode.aspx/getCode_Click", null, function (response) {
                $("#" + tdId).find(".getCodeProgress").hide();
                $("#" + tdId).find(".getCodeResult").html(response.d);
            }, function () {
                alert("fail");
            });
        }

        function GetBuild_Click(tdId) {
            $("#" + tdId).find(".getCodeProgress").show();
            AjaxPost("GetCode.aspx/getBuild_Click", null, function (response) {

                //$("#" + tdId).find(".getCodeProgress").hide();
               // $("#" + tdId).find(".getCodeResult").html(response.d);
            }, function () {
                alert("fail");
            });
        }
        function Deploy_Click(tdId) {
            $("#" + tdId).find(".getCodeProgress").show();
            AjaxPost("GetCode.aspx/Deploy_Click", null, function (response) {
                $("#" + tdId).find(".getCodeProgress").hide();
                $("#" + tdId).find(".getCodeResult").html(response.d);
            }, function () {
                alert("fail");
            });
        }

       
    </script>
</asp:Content>
