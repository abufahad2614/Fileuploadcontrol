<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileuploadpdf.aspx.cs" Inherits="Fileuploadcontrol.fileuploadpdf" %>

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
            width: 261px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>FileUpload Only PDF Demo</h1>
        </div>
        <table cellpadding="5" class="auto-style1">
            <tr>
                <td class="auto-style2">Upload your Resume</td>
                <td>
                    <asp:FileUpload ID="Fileupload" runat="server" Height="33px" Width="269px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Submitbtn" runat="server" BackColor="#996633" CssClass="auto-style3" ForeColor="#66FFFF" Height="34px" OnClick="Submitbtn_Click" Text="Submit" Width="85px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblpdf" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
