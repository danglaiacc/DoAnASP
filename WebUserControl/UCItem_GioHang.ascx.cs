using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl_UCItem_GioHang : System.Web.UI.UserControl
{

    public string tenSach { get; set; }
    public string maSach { get; set; }
    public string donGia { get; set; }
    public string soLuong { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        this.PreRender += new EventHandler(Product_PreRender);
    }
    private void Product_PreRender(object sender, EventArgs e)
    {
        linkTenSach.Text = tenSach;
        lblDonGia.Text = donGia;
        txtNumber.Text = soLuong;
    }
}