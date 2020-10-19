<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCSachMoi.ascx.cs" Inherits="WebUserControl_UCSachMoi" %>
<%@ Register Src="~/WebUserControl/UCItem_Sach.ascx" TagPrefix="uc1" TagName="UCItem_Sach" %>

<asp:DataList ID="dataListSachMoi" runat="server" Width="100%" CellPadding="10" RepeatLayout="Flow" RepeatDirection="Horizontal" OnItemCommand="dataList_ItemCommand">
    <ItemTemplate>
        <uc1:UCItem_Sach runat="server" ID="UCItem_Sach" />
    </ItemTemplate>
</asp:DataList>



