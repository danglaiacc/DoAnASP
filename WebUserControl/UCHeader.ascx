<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCHeader.ascx.cs" Inherits="WebUserControl_UCHeader" %>

<table class="w-100">
    <tr class="p-0">
        <td class="p-0">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="xmlAdvertisement.xml" Target="_blank" Width="100%" />
        </td>
    </tr>
    <tr>
        <td>
            <!-- HEADER-->
            <div class="header">
                <div class="container">
                    <div class="row">
                        <div class="col-6">
                            <div class="row">
                                <div class="col-2">
                                    <a href="../default.aspx">
                                        <i class="tikicon icon-logo mr-3"></i>
                                    </a>
                                </div>
                                <div class="col-10 d-flex">
                                    &nbsp;<asp:TextBox ID="txtTenSach" runat="server" CssClass="header__input form-control w-75 d-inline" placeholder="Nhập tên sách cần tìm"></asp:TextBox>

                                    <asp:LinkButton ID="btnTim" runat="server" CssClass="header__search d-flex align-items-center a-hover" OnClick="btnTim_Click">
                                    <div>

                                    <i class="tikicon icon-search">

                                    </i>
                                        Tìm kiếm
                                    </div>
                                    </asp:LinkButton>

                                </div>
                            </div>
                        </div>
                        <div class="col-6 d-flex">
                            <div class="header__user">
                                <i class="tikicon icon-tracking"></i>
                                <span>Theo dõi<br>
                            </div>
                            <div class="header__user">
                                <i class="tikicon icon-notification"></i>
                                <span>Thông báo                      
                                    <br>
                                    của tôi</span>
                            </div>
                            <asp:LinkButton class="header__user text-decoration-none bg-none btn shadow-none" data-toggle="modal" data-target="#modalDangNhap" runat='server' ID='btnDangNhap1' ClientIDMode='Static' OnClick='btnDangNhap1_Click'>
<i class="tikicon icon-user"></i>
                                <span><b>Đăng nhập</b><br>
                                    Tài khoản</span>r
                            </asp:LinkButton>

                            <a class="header__user text-decoration-none header__card" href='../WebForm/GioHang.aspx'>
                                <i class="tikicon icon-card ml-0"></i>
                                <span>Giỏ hàng</span>
                            </a>
                        </div>
                    </div>
                    <!-- //row-->
                </div>
                <!-- //container-->
            </div>
            <!-- //header-->
            <!-- //HEADER -->
        </td>
    </tr>

</table>

<!-- Modal -->
<div class="modal fade" id="modalDangNhap" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="position-absolute" style="top: -10px; right: -10px">

                <button type="button" class="close" style="background-color: red; color: white; width: 20px; height: 20px; border-radius: 50%; opacity: 1; display: flex; justify-content: center; align-items: center;"
                    data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-4 d-flex align-items-center">
                            <img class="w-100" src="../img/adDangNhap.png" alt="">
                        </div>
                        <!-- //col-5 -->

                        <div class="col-8">
                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="pills-DangNhap-tab" data-toggle="pill" href="#pills-DangNhap"
                                        role="tab" aria-controls="pills-DangNhap" aria-selected="true">Đăng nhập</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="pills-DangKy-tab" data-toggle="pill" href="#pills-DangKy" role="tab"
                                        aria-controls="pills-DangKy" aria-selected="false">Đăng ký</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-DangNhap" role="tabpanel"
                                    aria-labelledby="pills-DangNhap-tab">
                                    <div class='labelinput'>
                                        <label for="Username" class='lblInfo'>Tên đăng nhập</label>

                                        <asp:TextBox ID="txtUserDangNhap" runat="server" CssClass="form-control form-input" ToolTip="Username" placeholder="Username"></asp:TextBox>
                                    </div>
                                    <div class='labelinput'>
                                        <label for="Password" class='lblInfo'>Mật khẩu</label>

                                        <asp:TextBox ID="txtPasswordDangNhap" placeholder="Password" runat="server" CssClass="form-control form-input" ToolTip="Password" TextMode="Password"></asp:TextBox>

                                    </div>
                                    <span class='my-2'>Quên mật khẩu? Nhấn vào <a href="">đây</a>.</span>
                                    <div class="form-button mt-3">
                                        <asp:Button ID="btnDangNhap2" runat="server" CssClass="btn-custom btn btn-warning btn-block text-dark" Text="Đăng nhập" ToolTip="Log in" OnClick="btnDangNhap2_Click" />
                                        <button class="btn-custom btn btn-success btn-block">
                                            Đăng nhập bằng Số điện thoại</button>
                                        <button class="btn-custom btn btn-facebook btn-block">
                                            <span class="border-right-custom">
                                                <i class="tikicon icon-facebook"></i>
                                            </span>
                                            Đăng nhập bằng Facebook</button>
                                        <button class="btn-custom btn btn-google btn-block">
                                            <span class="border-right-custom">
                                                <i class="tikicon icon-google"></i>
                                            </span>
                                            Đăng nhập bằng Google
                                        </button>
                                        <button class="btn-custom btn btn-zalo btn-block">
                                            <span class="border-right-custom">
                                                <i class="tikicon icon-zalo"></i>
                                            </span>
                                            Đăng nhập bằng Zalo
                                        </button>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-DangKy" role="tabpanel" aria-labelledby="pills-DangKy-tab">

                                    <form class="needs-validation" novalidate>

                                        <div class='labelinput'>
                                            <label for="hoTen" class='lblInfo'>Họ tên</label>
                                            <asp:TextBox ID="txtHoTen" placeholder="Nhập họ tên" runat="server" CssClass="form-control form-input" ToolTip="Nhập họ tên"></asp:TextBox>
                                        </div>

                                        <div class='labelinput'>
                                            <label for="txtUser" class='lblInfo'>Tên đăng nhập</label>

                                            <asp:TextBox ID="txtUser" runat="server" CssClass="form-control form-input" ToolTip="Nhập tên đăng nhập" placeholder="Nhập tên đăng nhập"></asp:TextBox>

                                        </div>

                                        <div class='labelinput'>
                                            <label for="txtPass" class='lblInfo'>Mật khẩu</label>

                                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control form-input" ToolTip="Nhập mật khẩu" placeholder="Nhập mật khẩu từ 6 đến 32 ký tự"></asp:TextBox>

                                        </div>

                                        <div class='labelinput'>
                                            <label for="txtPass" class='lblInfo'>Địa chỉ</label>

                                            <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control form-input" ToolTip="Nhập địa chỉ" placeholder="Address"></asp:TextBox>

                                        </div>
                                        <div class='labelinput'>
                                            <label for="dienThoai" class='lblInfo'>SĐT</label>
                                            <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control form-input" ToolTip="Nhập số điện thoại" placeholder="Nhập số điện thoại"></asp:TextBox>
                                        </div>
                                        <div class='labelinput'>
                                            <label for="email" class='lblInfo'>Email</label>

                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-input" ToolTip="Nhập email" placeholder="Nhập email"></asp:TextBox>
                                        </div>

                                        <div class='labelinput'>
                                            <label for="gioiTinh" class='lblInfo'>Giới tính</label>
                                            <div class="form-input">
                                                <div class="form-check form-check-inline">
                                                    <asp:RadioButton ID="rdbtnNam" CssClass="form-check-input" runat="server" />
                                                    <label class="form-check-label" for="rdbtnNam">Nam</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <asp:RadioButton ID="rdbtnNu" CssClass="form-check-input" runat="server" />
                                                    <label class="form-check-label" for="rdbtnNu">Nữ</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class='labelinput d-flex'>
                                            <label for="ngaySinh" style="width: 37%" class='lblInfo'>Ngày sinh</label>
                                            <div class="form-row">
                                                <div class="col">

                                                    <asp:TextBox ID="txtNgay" runat="server" CssClass="form-control form-input" ToolTip="Nhập ngày sinh" placeholder="Ngày"></asp:TextBox>
                                                </div>
                                                <div class="col">
                                                    <asp:TextBox ID="txtThang" runat="server" CssClass="form-control form-input" ToolTip="Nhập tháng" placeholder="Tháng"></asp:TextBox>
                                                </div>
                                                <div class="col">
                                                    <asp:TextBox ID="txtNam" runat="server" CssClass="form-control form-input" ToolTip="Nhập năm" placeholder="Năm"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-button mt-3">
                                            <asp:Button ID="btnDangKy" runat="server" CssClass="btn btn-warning btn-block text-dark" OnClick="btnDangKy_Click" Text="Đăng ký" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- //col-7 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //modal-->


