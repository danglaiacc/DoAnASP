<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="WebForm_GioHang" EnableEventValidation="false" %>

<%@ Register Src="~/WebUserControl/UCItem_GioHang.ascx" TagPrefix="uc1" TagName="UCItem_GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giỏ hàng</title>

    <link href="../vendor/boostrap4.5/bootstrap.min.css" rel="stylesheet" />
    <link href="../style/GioHang.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3 class=" h3 font-weight-bold text-center">GIỎ HÀNG</h3>
            <div class="container gioHang">
                <div class="row">
                    <div class="col-8 border">
                        <div class="gioHang__title h5 mb-3">Sản phẩm</div>
                        <asp:DataList ID="dataListSanPham" runat="server">
                            <ItemTemplate>
                                <uc1:UCItem_GioHang runat="server" ID="UCItem_GioHang" tenSach=<%# Eval("tenSach")%> donGia=<%# Eval("donGia")%> soLuong=<%# Eval("soLuong")%> />
                            </ItemTemplate>

                        </asp:DataList>
                    </div>

                    <div class="col-4">
                        <div class="card">
                            <div class="card-header bg-success text-white text-center">
                                THÔNG TIN THANH TOÁN
                            </div>
                            <div class="card-body">
                                <div class="hang">
                                    <div class="d-inline-block">Sản phẩm
                                    </div>
                                    <asp:Label ID="lblTongSoLuong" CssClass="gioHang__soLuong d-inline-block" runat="server" Text='<%# Eval("soLuong") %>'></asp:Label>
                                </div>
                                <div class="hang">
                                    <div class="d-inline-block">Phí vận chuyển</div>
                                    <div class="d-inline-block text-right">Miễn phí</div>
                                </div>
                                <div class="hang">
                                    <div class="d-inline-block">Tạm tính</div>
                                    <asp:Label ID="lblTongTien1"  CssClass="d-inline-block text-right text-success" runat="server" Text='<%# Eval("soLuong") %>'></asp:Label>
                                </div>
                                <hr>
                                <div class="hang">
                                    <div>TỔNG CỘNG</div>
                                    <asp:Label ID="lblTongTien2"  CssClass="d-inline-block font-weight-bold text-right text-success" runat="server" Text=''></asp:Label>
                                </div>
                                <asp:Button ID="btnThanhToan" CssClass="mt-3 btn btn-primary btn-block" runat="server" Text="Thanh toán" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="../vendor/boostrap4.5/jquery-3.5.1.slim.js"></script>
    <script src="../vendor/boostrap4.5/popper.min.js"></script>
    <script src="../vendor/boostrap4.5/bootstrap.min.js"></script>
</body>
</html>