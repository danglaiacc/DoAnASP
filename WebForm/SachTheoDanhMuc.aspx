<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserControl/MasterPage.master" AutoEventWireup="true" CodeFile="SachTheoDanhMuc.aspx.cs" Inherits="WebForm_Default" EnableEventValidation="false" %>

<%@ Register Src="../WebUserControl/UCItem_Sach.ascx" TagName="UCItem_Sach" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <title>Sách theo danh mục</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungChinh" runat="Server">

    <asp:DataList ID="lstSachTheoDanhMuc" runat="server" Width="100%" CellPadding="10" RepeatLayout="Flow" RepeatDirection="Horizontal" OnItemCommand="dataList_ItemCommand">
        <ItemTemplate>
            <uc1:UCItem_Sach ID="UCItem_Sach" runat="server" />
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

