using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class WebForm_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String strTemp = " s.ms,tg.Mtg,ten_sach, Hinh_minh_hoa,tg.Ten_tac_gia, Mo_ta,Don_gia from sach s inner join tham_gia t on s.ms = t.Ms inner join TAC_GIA tg on t.mtg = tg.Mtg ";
            string str = Request.QueryString["tenSach"].ToString();
            str.Replace("%20", " ");
            lblThongBao.Text = "Kết quả tìm kiếm cho: " + str;
            lstTimSach.DataSource = XL_DuLieu.Doc_bang("select "+strTemp+" where ten_sach like N'%" + str+"%' order by ngay_cap_nhat desc");

            lstTimSach.DataBind();
        }
    }

    protected void dataList_ItemCommand(object source, DataListCommandEventArgs e)
    {

        Response.Write("commandArgument = " + e.CommandArgument);
        DataTable bangGioHang = (DataTable)Session["gioHang"];
        // Tìm mã sản phẩm đã tồn tại trong giỏ hàng hay chưa
        int ms = int.Parse(e.CommandArgument.ToString());
        int i = 0;
        for (i = 0; i < bangGioHang.Rows.Count; i++)
            if (int.Parse(bangGioHang.Rows[i]["ms"].ToString()) == ms)
                break; // nếu tìm thấy thì break, giữ lại giá trị của i
        // nếu không tìm thấy thì i bằng bangGioHang.Rows.Count
        if (i == bangGioHang.Rows.Count) // sản phẩm chưa tồn tại trong giỏ hàng
        { // tạo 1 hàng trong bảng để chứa sản phẩm đó
            DataTable tblLocSach = XL_DuLieu.Doc_bang("select ms,ten_sach,hinh_minh_hoa,don_gia from sach where ms='" + ms + "'");
            DataRow r = bangGioHang.NewRow();
            r["ms"] = tblLocSach.Rows[0]["ms"];
            r["tenSach"] = tblLocSach.Rows[0]["ten_sach"];
            r["hinhMinhHoa"] = tblLocSach.Rows[0]["hinh_minh_hoa"];
            r["soLuong"] = 1;
            r["donGia"] = tblLocSach.Rows[0]["don_gia"];
            bangGioHang.Rows.Add(r);
        }
        else // sản phẩm đã tồn tại trong giỏ hàng
        {
            bangGioHang.Rows[i]["soLuong"] = int.Parse(bangGioHang.Rows[i]["soLuong"].ToString()) + 1;
        }
        bangGioHang.AcceptChanges();
        Session["gioHang"] = bangGioHang;
    }

}


