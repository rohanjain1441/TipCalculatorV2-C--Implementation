using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class tip_tailoring : System.Web.UI.Page
{
    public class myObject
    {
        public string name { get; set; }
        public string dollar { get; set; }
        public string value { get; set; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<myObject> myList = new List<myObject>();

            //int no = 4;
            //float total = 20;
                int no = Int32.Parse(Session["NoOfPpl"].ToString());
              float total = float.Parse(Session["totaltip"].ToString());


            float perperson = (float)total / no;

            for (int i = 1; i <= no; i++)
            {
                myList.Add(new myObject { name = "Guest "+i, dollar = "$", value = perperson.ToString() });
            }

            rep1.DataSource = myList;
            rep1.DataBind();



        }

       
        
        

    }


    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        ArrayList name = new ArrayList();
        ArrayList Tipval = new ArrayList();
            
        //read the values and output them
        litResults.Text = "";
        foreach (RepeaterItem i in rep1.Items)
        {
            TextBox txtName = (TextBox)i.FindControl("txtName");
            TextBox txtTipValue = (TextBox)i.FindControl("txtTipValue");
            
            if (txtName != null)
            {
                name.Add(txtName.Text);
                
            }

            if (txtTipValue != null)
            {
                Tipval.Add(txtTipValue.Text);

            }
        }

        Session["Names"] = name;
        Session["Values"] = Tipval;
        Response.Redirect("Default.aspx");
    }   
}
