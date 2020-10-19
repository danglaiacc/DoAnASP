<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCItem_GioHang.ascx.cs" Inherits="WebUserControl_UCItem_GioHang" %>

<div class="row">
    <div class="col-2 gioHang__img">
        <asp:Image ID="Image1" CssClass="img-fluid" runat="server" AlternateText='<%# Eval("tenSach") %>' ImageUrl='<%# "~/images_Mau/Sach/"+Eval("hinhMinhHoa") %>' />
    </div>
    <div class="col-8">
        <asp:HyperLink ID="linkTenSach" runat="server" NavigateUrl='<%# "~/WebForm/ChiTietSanPham.aspx?ms="+Eval("ms") %>' Text='<%# Eval("TenSach") %>' CssClass="gioHang__tenSach h5"></asp:HyperLink>
        </br>
                                        <div class="btn-group col-2">
                                            <asp:Button ID="btnMinus" runat="server" CssClass="btn btn-warning shadow-none" Text="-" />
                                            <asp:TextBox ID="txtNumber" runat="server" ClientIDMode="static" CssClass="form-control border-0 rounded-0 shadow-none" Enabled="False" Text="1"></asp:TextBox>
                                            <asp:Button ID="btnPlus" runat="server" CssClass="btn btn-success shadow-none" Text="+" />
                                        </div>
    </div>
    <div class="col-2 text-right">
        <div class="gioHang__tinh">
            <asp:Label ID="lblSoLuong" CssClass="gioHang__soLuong d-inline-block" runat="server" Text='<%# Eval("soLuong") %>'></asp:Label>
            x
           <asp:Label ID="lblDonGia" CssClass="gioHang__donGia d-inline-block" runat="server" Text='<%# Eval("donGia") %>'></asp:Label>

        </div>
        <div class="gioHang__xoa">
            <asp:Button ID="btnXoa" CssClass="btn btn-danger" runat="server" Text="Xóa" />
        </div>
    </div>
</div>
