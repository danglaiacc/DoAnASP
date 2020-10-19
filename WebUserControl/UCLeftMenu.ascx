<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCLeftMenu.ascx.cs" Inherits="WebUserControl_UCLeftMenu" %>


<asp:DataList ID="lstDanhMuc" runat="server" CssClass="list-group">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="list-group-item border-top-0" NavigateUrl='<%# "~/WebForm/SachTheoDanhMuc.aspx?mcd="+Eval("Mcd") %>' Text='<%# Eval("ten_chu_de") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
    

