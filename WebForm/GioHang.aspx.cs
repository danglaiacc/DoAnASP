using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class WebForm_GioHang : System.Web.UI.Page
{
    public static DataTable bangGioHang;
    protected void Page_Load(object sender, EventArgs e)
    {
        bangGioHang = (DataTable)Session["gioHang"];
        double tongTien = 0, tongSanPham = 0;
        for (int i = 0; i < bangGioHang.Rows.Count; i++)
        {
            tongTien += int.Parse(bangGioHang.Rows[i]["soLuong"].ToString()) * double.Parse(bangGioHang.Rows[i]["donGia"].ToString());
            tongSanPham += int.Parse(bangGioHang.Rows[i]["soLuong"].ToString());
        }
        lblTongTien1.Text = lblTongTien2.Text = tongTien.ToString();
        lblTongSoLuong.Text = tongSanPham.ToString();
        dataListSanPham.DataSource = bangGioHang;
        dataListSanPham.DataBind();
    }
}

