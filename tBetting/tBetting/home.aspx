<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="tBetting.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #menu 
        {
            display: table;
            margin: 0 auto;
        }
        .style1
        {
            width: 100%;
        }
        .divcenter 
        {
            width: 50%;
            margin: 0 auto;
            background-color: azure;
        }
        .style2
        {}
        .style4
        {
        }
        .style5
        {
            width: 13px;
        }
        .style10
        {
            width: 135px;
        }
        .style11
        {
            width: 131px;
        }
    </style>
</head>
<body style="background-color:Black">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
    <asp:Menu ID="menu" runat="server" BackColor="#E3EAEB" 
        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                    RenderingMode="Table" Width="50%">
        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#E3EAEB" />
        <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem Text="Почетна" Value="Почетна" NavigateUrl="~/home.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Спорт" Value="Спорт"></asp:MenuItem>
            <asp:MenuItem Text="Игри" Value="Игри" NavigateUrl="~/igri.aspx"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
        <StaticMenuItemStyle Font-Size="Medium" Height="20px" HorizontalPadding="5px" 
            VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
                <div class="divcenter">
                    <asp:MultiView ID="MultiView1" runat="server" >
                        <asp:View ID="View2" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style10">
                                        Логирање</td>
                                    <td class="style11">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        Корисничко име</td>
                                    <td class="style11">
                                        <asp:TextBox ID="loginName" runat="server" ValidationGroup="Grupa3"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="loginName" ErrorMessage="RequiredFieldValidator" 
                                            ForeColor="Red" ValidationGroup="Grupa3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        Лозинка</td>
                                    <td class="style11">
                                        <asp:TextBox ID="loginPass" runat="server" ValidationGroup="Grupa3"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="loginPass" ErrorMessage="RequiredFieldValidator" 
                                            ForeColor="Red" ValidationGroup="Grupa3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td class="style11">
                                        <asp:Button ID="btnLogin" runat="server" Text="Поднеси" 
                                            ValidationGroup="Grupa3" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style2" colspan="2">
                                        Регистрација</td>
                                    <td class="style2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2" colspan="2">
                                        <asp:Label ID="lblStatus" runat="server"></asp:Label>
                                    </td>
                                    <td class="style2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Корисничко име:</td>
                                    <td class="style5">
                                        <asp:TextBox ID="registerName" runat="server" ValidationGroup="grupa2"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="registerName" ErrorMessage="Внесете корисничко име" 
                                            ForeColor="Red" ValidationGroup="grupa2"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Лозинка:</td>
                                    <td class="style5">
                                        <asp:TextBox ID="registerPass" runat="server" TextMode="Password" 
                                            ValidationGroup="grupa2"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="registerPass" ErrorMessage="Внесете лозинка" ForeColor="Red" 
                                            ValidationGroup="grupa2"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        Салдо:</td>
                                    <td class="style5">
                                        <asp:TextBox ID="registerSaldo" runat="server" ValidationGroup="grupa2"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="registerSaldo" ErrorMessage="Внесете салдо" ForeColor="Red" 
                                            ValidationGroup="grupa2"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        &nbsp;</td>
                                    <td class="style5">
                                        <asp:Button ID="btnRegistracija" runat="server" Text="Поднеси" 
                                            ValidationGroup="grupa2" onclick="btnRegistracija_Click" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style4" colspan="3">
                                        Доколку сте веќе регистирани кликнете
                                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">тука</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
