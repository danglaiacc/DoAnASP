<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserControl/MasterPage.master" 
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/WebUserControl/UCSachBanChay.ascx" TagPrefix="uc1" TagName="UCSachBanChay" %>
<%@ Register Src="~/WebUserControl/UCSachMoi.ascx" TagPrefix="uc1" TagName="UCSachMoi2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <title>Mua sắm trực tuyến tại tiki</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="css" runat="Server">
    <link href="style/Default.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungChinh" runat="Server">
    <h3 class="font-weight-bold">Sách mới</h3>
    <uc1:UCSachMoi2 runat="server" id="UCSachMoi2" />

    <h3 class="font-weight-bold">Sách bán chạy</h3>
    <uc1:UCSachBanChay runat="server" ID="UCSachBanChay" />
</asp:Content>
