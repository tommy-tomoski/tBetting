<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="igri.aspx.cs" Inherits="tBetting.igri" %>

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
            height: 36px;
            margin-bottom: 0px;
        }
        .divcenter 
        {
            width: 50%;
            margin: 0 auto;
            background-color: azure;
            height: 595px;
        }
        #form1
        {
            height: 711px;
        }
        .style2
        {
            height: 9px;
        }
        .style3
        {
            height: 404px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            height: 25px;
            width: 99px;
        }
        .style6
        {
            height: 25px;
            width: 98px;
        }
        .style7
        {
            height: 25px;
            width: 120px;
        }
        .style8
        {
            width: 117px;
        }
        .style9
        {
            width: 206px;
        }
        .style10
        {
            height: 25px;
            width: 91px;
        }
    </style>
</head>
<body style="background-color:Black">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
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
                    Blackjack:<br />
                    <br />
                    <asp:Button ID="btnStart" runat="server" onclick="btnStart_Click" 
                        Text="Нова игра" UseSubmitBehavior="False" />
                    <br />
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:Panel ID="Panel1" runat="server">
                                </asp:Panel>
                                <asp:Panel ID="pnl1" runat="server" Height="100%" Visible="False">
                                    <table class="style4">
                                        <tr>
                                            <td class="style6">
                                                Внесете влог</td>
                                            <td class="style7">
                                                <asp:DropDownList ID="DropDownList1" runat="server" Width="106px" 
                                                    ValidationGroup="grupa1">
                                                    <asp:ListItem Value="0">-влог-</asp:ListItem>
                                                    <asp:ListItem Value="20">20 денари</asp:ListItem>
                                                    <asp:ListItem Value="50">50 денари</asp:ListItem>
                                                    <asp:ListItem Value="100">100 денари</asp:ListItem>
                                                    <asp:ListItem Value="200">200 денари</asp:ListItem>
                                                    <asp:ListItem Value="500">500 денари</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style10">
                                                <asp:Button ID="btnPodnesi0" runat="server" onclick="btnPodnesi0_Click" 
                                                    style="margin-left: 0px" Text="Поднеси" UseSubmitBehavior="False" 
                                                    ValidationGroup="grupa1" />
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="DropDownList1" ErrorMessage="Мора да внесете влог!" 
                                                    ForeColor="Red" ValidationGroup="grupa1"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Panel ID="pnl2" runat="server" Height="314px" Visible="False">
                        <table class="style4">
                            <tr>
                                <td class="style8">
                                    Вашиот влог е:</td>
                                <td class="style9">
                                    <asp:Label ID="lblVlog" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    &nbsp;</td>
                                <td class="style9">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    Вашата рака:</td>
                                <td class="style9">
                                    <asp:TextBox ID="tbVasaRaka" runat="server" Enabled="False" 
                                        TextMode="MultiLine" Height="65px" Width="171px" Wrap="False"></asp:TextBox>
                                </td>
                                <td>
                                    Вредност:
                                </td>
                                <td>
                                    <asp:TextBox ID="tbVasaVrednost" runat="server" ReadOnly="True" Width="79px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    Раката на противникот е:</td>
                                <td class="style9">
                                    <asp:TextBox ID="tbKomRaka" runat="server" Enabled="False" Height="65px" 
                                        TextMode="MultiLine" Width="171px" Wrap="False"></asp:TextBox>
                                </td>
                                <td>
                                    Вредност:</td>
                                <td>
                                    <asp:TextBox ID="tbKomRakaVrednost" runat="server" ReadOnly="True" Width="79px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    &nbsp;</td>
                                <td class="style9">
                                    <asp:Button ID="btnUdri" runat="server" onclick="btnUdri_Click" Text="Удри" />
                                    <asp:Button ID="btnZastani" runat="server" Text="Застани" 
                                        onclick="btnZastani_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                                </td>
                                <td class="style9">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
