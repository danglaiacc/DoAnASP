using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WebUserControl_UCHeader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strHoTen = Session["hoTen"].ToString();
        if (strHoTen != "") // đăng nhập thành công
        {
            String btnDangNhapText = "<span class='d-flex align-items-center'><i class='tikicon icon-user'></i><div><b>" + strHoTen + "</b></br>Đăng xuất</div></span>";
            btnDangNhap1.Text = btnDangNhapText;
            btnDangNhap1.Attributes.Remove("data-toggle");
            btnDangNhap1.Attributes.Remove("data-target");
        }
        else // chưa đăng nhập
        {
            btnDangNhap1.Text = "<i class='tikicon icon-user'></i><span><b>Đăng nhập</b><br>Tài khoản</span>";
        }
    }
    protected void btnDangNhap2_Click(object sender, EventArgs e)
    {
        String strUser = txtUserDangNhap.Text.Trim(),
                        strPass = txtPasswordDangNhap.Text.Trim();

        DataTable tblLogin = XL_DuLieu.Doc_bang("select mkh,ho_ten from khach_hang where ten_dang_nhap = '" + strUser + "' and mat_khau = '" + strPass + "'");
        if (tblLogin.Rows.Count > 0)
        {
            Session["user"] = strUser;
            Session["hoTen"] = tblLogin.Rows[0]["ho_ten"];
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Thông tin đăng nhập không hợp lệ')</script>");
        }
    }

    protected void btnDangNhap1_Click(object sender, EventArgs e)
    {
        Session["hoTen"] = "";
        Response.Redirect("Default.aspx");

    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        bool biTrung = // bị trùng
            kiemTraTrung("ten_dang_nhap", txtUser.Text, "Tên đăng nhập") |
            kiemTraTrung("email", txtEmail.Text, "Email") |
            kiemTraTrung("dien_thoai", txtDienThoai.Text, "Điện thoại");
        if (!biTrung) // dữ liệu nhập vào không bị trùng
        {
            string str = "insert into khach_hang(ho_ten,dia_chi,dien_thoai,ten_dang_nhap,mat_khau,ngay_sinh,gioi_tinh,email) values (N'" + txtHoTen.Text + "',N'" + txtDiaChi.Text + "','" + txtDienThoai.Text + "','" + txtUser.Text + "','" + txtPass.Text + "','" + DateTime.Parse(txtNam.Text + "/" + txtThang.Text + "/" + txtNgay.Text).ToString("yyyy/MM/dd") + "'," + (rdbtnNam.Checked ? 1 : 0) + ",'" + txtEmail.Text + "')";
            bool kqDangKy = XL_DuLieu.Thuc_hien_lenh(str);
            if (kqDangKy)
                Response.Write("<script>alert('Đăng ký thành công')</script>");
            else
                Response.Write("<script>alert('str: "+str+"')</script>");

        }
    }
    /// <summary>
    /// Kiểm tra 1 giá trị được nhập vào có trùng hay không
    /// </summary>
    /// <param name="key">Thuộc tính SQL cần kiểm tra </param>
    /// <param name="value">Giá trị nhập vào</param> 
    /// <returns>true nếu giá trị đó trùng</returns>
    private Boolean kiemTraTrung(string key, string value, string thongBao)
    {
        int exist = int.Parse(XL_DuLieu.Thuc_hien_lenh_tinh_toan("select count(*) from khach_hang where " + key + " = '" + value + "'").ToString());
        if (exist > 0)
        {
            Response.Write("<script>alert('" + thongBao + " đã tồn tại')</script>");
            return true;
        }
        return false;
    }
    protected void btnTim_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/WebForm/TimSach.aspx?tenSach=" + txtTenSach.Text);
    }
}
