<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileuploadjpg.aspx.cs" Inherits="Fileuploadcontrol.fileuploadjpg" %>

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
            width: 296px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>FileUpload Only jpg/png (20kb)</h1>
        </div>
        <table cellpadding="4" class="auto-style1">
            <tr>
                <td class="auto-style2">Please Upload a Picture&nbsp;</td>
                <td>
                    <asp:FileUpload ID="Fileuploadpng" runat="server" Height="41px" Width="269px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td><asp:Image ID="Image1" runat="server" Height="111px" Width="162px" /></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="jpgsubbtn" runat="server" BackColor="#3399FF" CssClass="auto-style3" ForeColor="White" Height="34px" Text="Submit" Width="86px" OnClick="jpgsubbtn_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Lbljpg" runat="server" ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
