<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="Fileuploadcontrol.fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            font-size: x-large;
        }
        .auto-style2 {
            width: 263px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>FileUpload Control Demo</h1>
        </div>
        <table cellpadding="3" class="auto-style1">
            <tr>
                <td class="auto-style2">Upload your Resume </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="36px" Width="260px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" BackColor="#999966" CssClass="auto-style3" ForeColor="#66FFFF" Height="35px" OnClick="btnsubmit_Click" Text="Submit" Width="83px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Lblres" runat="server" ForeColor="#00CC00"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
