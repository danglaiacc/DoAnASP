<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCItem_Sach.ascx.cs" Inherits="WebUserControl_UCItem_Sach" %>

<div class="col-12 mb-3 bg-white book-intro" style="border-radius: 5px">
    <div class="row">
        <div class="col-4 pr-0">
            <div class="position-relative">
                <asp:Image ID="Image1" runat="server" CssClass="book-intro__img" AlternateText='<%# Eval("ten_sach") %>' ImageUrl='<%# "~/images_Mau/Sach/"+Eval("Hinh_minh_hoa") %>' />
            </div>
        </div>
        <!-- //col-4-->

        <div class="col-8 info">
            <div class="book-title pb-2">
                <asp:HyperLink ID="linkTenSach" runat="server" CssClass="d-block book-name text-decoration-none" Text='<%# (Eval("ten_sach").ToString().Length >16)?(Eval("ten_sach").ToString().Substring(0,16)+"..."):(Eval("ten_sach")) %>' NavigateUrl='<%# "~/WebForm/ChiTietSanPham.aspx?Ms="+Eval("Ms") %>'></asp:HyperLink>
                <asp:HyperLink ID="linkTenTacGia" runat="server" CssClass="book-author" Text='<%# Eval("Ten_tac_gia") %>'></asp:HyperLink>
            </div>
            <div class="border-top pt-2">
                <asp:Label ID="lblMoTa" runat="server" CssClass="book-content" Text='<%# (Eval("Mo_ta").ToString().Length>85)?(Eval("Mo_ta").ToString().Substring(0,85)+"..."):(Eval("Mo_ta")) %>'></asp:Label>
            </div>
        </div>
        <!-- //col-8-->
    </div>
    <!-- //row-->
    <div class="row price">
        <div class="col-6">
            <asp:Label ID="lblGiaKhuyenMai" runat="server" CssClass="text-danger d-block text-bold mb-0" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,###đ") %>'></asp:Label>
            <asp:Label ID="lblGiaGoc" runat="server" CssClass="del-text d-block mb-0 text-mute" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,###đ") %>'></asp:Label>
        </div>
        <%--//col6--%>
        <div class="col-6 px-0">
            <asp:Button ID="btnMua" runat="server" CssClass="btn btn-warning btn-block text-center d-flex justify-content-center align-items-center" Text="Mua ngay" CommandArgument='<%# Eval("Ms") %>' CommandName="muangay" />
        </div>
        <%--//col6--%>
    </div>
    <!-- //row price-->
</div>

