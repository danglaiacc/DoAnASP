using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl_UCLeftMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lstDanhMuc.DataSource = XL_DuLieu.Doc_bang("select mcd,ten_chu_de from chu_de");
        lstDanhMuc.DataBind();
    }
}