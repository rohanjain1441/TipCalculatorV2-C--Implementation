using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class config : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

       // txtMinTip.Text = Session["lowRange"].ToString();
        //txtMaxTip.Text = Session["highRange"].ToString();

    }
    protected void butConfig_Click(object sender, EventArgs e)
    {
        Session["confLowRange"] = txtMinTip.Text;
        Session["confHighRange"] = txtMaxTip.Text;

        Session["radTax"] = radTax.SelectedValue.ToString();
        Session["radDeduc"] = radDeduc.SelectedValue.ToString();
        Response.Redirect("Default.aspx");
      
    }
    
}
