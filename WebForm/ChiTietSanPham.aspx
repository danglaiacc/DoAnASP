<%@ Page Title="" Language="C#" MasterPageFile="~/WebUserControl/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="WebForm_ChiTietSanPham" %>

<%@ Register Src="../WebUserControl/UCSachMoi.ascx" TagName="UCSachMoi" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <title>Chi tiết sản phẩm</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="css" runat="Server">
    <link href="../style/ChiTietSanPham.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungChinh" runat="Server">
    <asp:DataList ID="lstChiTietSach" runat="server" OnItemCommand="dataList_ItemCommand">
        <ItemTemplate>
            <div class="container sach">
                <div class="row sach__main-info my-3">
                    <div class="col-3 sach__hinhAnh">
                        <asp:Image ID="Image1" runat="server" CssClass="w-100" AlternateText='<%# Eval("ten_sach") %>' ImageUrl='<%# "~/images_Mau/Sach/"+Eval("hinh_minh_hoa") %>' />
                    </div>
                    <div class="col-6 sach__product-info">

                        <asp:Label ID="lblTenSach" runat="server" Text='<%# Eval("Ten_sach") %>' CssClass="sach__product-info__tieuDe"></asp:Label>
                        <div class="sach__product-info__span">
                            Tác giả:
                        <asp:HyperLink ID="linkTacGia" runat="server" Text='<%# Eval("Ten_tac_gia") %>' NavigateUrl='<%# "~/WebForm/ThongTinTacGia.aspx?mtg="+Eval("mtg") %>'></asp:HyperLink>
                        </div>

                        <div class="sach__product-info__span">
                            Nhà xuất bản:
                    <asp:HyperLink ID="linkNXB" runat="server" Text='<%# Eval("ten_nha_xuat_ban") %>' NavigateUrl='<%# "~/WebForm/ThongTinNXB.aspx?mnxb="+Eval("mnxb") %>'></asp:HyperLink>
                        </div>
                        <div>
                            <asp:Label ID="lblThongTinGon" runat="server" Text='<%# (Eval("Mo_ta").ToString().Length>500)?(Eval("Mo_ta").ToString().Substring(0,500)+"..."):(Eval("Mo_ta")) %>' CssClass="sach__product-info__chiTiet">
                            </asp:Label>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#chiTiet">Xem thêm</asp:HyperLink>
                        </div>

                        <p class="sach__product-info__sub-title dashed-border">Thông tin kèm theo</p>
                        <p class="sach__product-info__boc mb-0">
                            <i class="tikicon icon-tick"></i>
                            Có dịch vụ bọc sách plastic cao cấp cho sách này <a href="">Chi tiết</a>
                        </p>
                        <p class="sach__product-info__vanChuyen mb-0">
                            <i class="tikicon icon-tick"></i>
                            Miễn phí giao hàng toàn quốc cho Đơn hàng từ 250.000đ <a href="">Chi tiết</a>
                        </p>
                    </div>
                    <div class="col-3 sach__product-info__thanhToan">
                        <div class="sach__thanhToan__tieuDe ">Thông tin thanh toán</div> 

                        <div class="d-flex justify-content-between">
                            Giá bìa
                        <asp:Label ID="lblGiaBia" runat="server" CssClass="text-mute del-text d-inline" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,###đ") %>'></asp:Label>
                        </div>

                        <div class="d-flex justify-content-between">
                            Giá bán
                    <asp:Label ID="lblGiaBan" runat="server" CssClass="text-danger d-inline" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,###đ") %>'></asp:Label>
                        </div>
                        <div class="d-flex justify-content-between">
                            Tiết kiệm
                    <asp:Label ID="lblGiaBan0" runat="server" CssClass="text-success mr-0 d-inline" Text="<%# 0 %>"></asp:Label>
                        </div>


                        <p class='text-success font-weight-bold dashed-border text-right pt-2 mb-2'>
                            <i class="tikicon icon-tick"></i>
                            Có hàng
                        </p>
                        <div class="text-center">
                            <asp:LinkButton ID="btnMuaNgay" runat="server" CssClass="btn btn-warning px-5 d-flex justify-content-center align-items-center mx-auto mb-3" CommandArgument='<%# Eval("ms") %>' CommandName="muangay">
                                <i class="tikicon icon-card mr-2"></i>
                                Mua ngay</asp:LinkButton> 
                        </div>
                        <div class="text-right">

                            <button class="btn btn-outline-success">
                                <i></i>
                                Đã đọc
                            </button>
                            <button class="btn btn-outline-success">
                                <i></i>
                                Thích
                            </button>
                        </div>
                    </div>
                </div>
                <!-- //tongQuan-->
                <div class="row sach__chiTiet" id="chiTiet">

                    <div class="row sach__chiTiet" id='gioiThieu'>
                        <div class="sach__chiTiet__title w-100">
                            <div class="row">
                                <div class="col-2">Giới thiệu sách</div>
                                <div class="col-2">Thông tin chi tiết</div>
                                <div class="col-2">Đánh giá - Bình luận</div>
                            </div>
                        </div>
                        <div class="sach__chiTiet__main">
                            <div class="sach__chiTiet__tacGia">
                                <div class="sach__chiTiet__tacGia__title">Thông tin tác giả</div>
                                <div class="sach__chiTiet__tacGia__detail">
                                    <div class="ten dashed-border">
                                        <asp:HyperLink ID="linkTenTacGia" runat="server" Text='<%# Eval("Ten_tac_gia") %>'></asp:HyperLink>
                                    </div>
                                    <div class="tacGia__img">
                                        <asp:Image ID="Image2" CssClass="w-100" runat="server" ImageUrl='<%# "~/images_Mau/TacGia/"+Eval("hinhTacGia") %>' />
                                    </div>
                                    <asp:Label ID="Label1" runat="server" Text='<%# (Eval("chiTietTacGia").ToString().Length >250)?(Eval("chiTietTacGia").ToString().Substring(0,250)+"..."):(Eval("ten_sach")) %>'></asp:Label>
                                </div>
                                <ul>
                                    <li>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/WebForm/ThongTinTacGia.aspx?mtg="+Eval("mtg") %>' Text='<%# "Vào trang riêng của "+Eval("ten_tac_gia") %>'></asp:HyperLink>
                                    </li>
                                    <li>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/WebForm/ThongTinTacGia.aspx?mtg="+Eval("mtg") %>' Text='<%# "Xem tất cả sách của "+Eval("Ten_tac_gia") %>'></asp:HyperLink>
                                    </li>
                                </ul>

                            </div>
                            <asp:Label ID="lblTenSach2" runat="server" Text='<%# Eval("Ten_sach") %>' CssClass="font-weight-bold"></asp:Label>
                            <asp:Label ID="lblMoTaNhieu" runat="server" Text='<%# Eval("Mo_ta") %>'></asp:Label>
                        </div>
                    </div>
                    <!-- //chiTiet-->
                    <!-- //chiTiet-->
                </div>
                <div class="row sachMoi">

                    <!-- //sachMoi-->
                </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


