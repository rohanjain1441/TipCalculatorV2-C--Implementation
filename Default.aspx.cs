using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class _Default : System.Web.UI.Page
{
    public class myObject
    {
        public string name { get; set; }
        public string dollar { get; set; }
        public string value { get; set; }
    }
 
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        

    }
    protected void conf(object sender, EventArgs e)
    {
        try
        {
            txtMin.Text = Session["confLowRange"].ToString();
            txtMax.Text = Session["confHighRange"].ToString();
            radTax.SelectedValue = Session["radTax"].ToString();
            radDeduc.SelectedValue = Session["radDeduc"].ToString();

            if (radDeduc.SelectedValue == "No")
            {
                txtBillDeductions.Visible = false;
            }
            if (radDeduc.SelectedValue == "Yes")
            {
                txtBillDeductions.Visible = true;
            }
            if (radTax.SelectedValue == "No")
            {
                txtTax.Visible = false;
            }

            if (radTax.SelectedValue == "Yes")
            {
                txtTax.Visible = true;
            }





        }
        catch (Exception e1)
        {
            lblError.Text = "ERROR : CONFIGURE THE TIP ITEMS FIRST";
        }

    }

    protected void calcTotal(object sender, EventArgs e)
    {
        try
        {

            if (radTax.SelectedValue == "No" && radDeduc.SelectedValue == "Yes")
            {

                float bill = Int32.Parse(txtBillTotal.Text);
                float deduction = Int32.Parse(txtBillDeductions.Text);
                float tax = Int32.Parse("0");
                txtTax.Text = "0";
                float noofppl = Int32.Parse(txtNoOfGuests.Text);

                float payableAmount = bill - deduction - tax;

                float tip_rate = Int32.Parse(lblTipRate.Text);

                float total_tip = (float)payableAmount * (float)(tip_rate / 100);
                lblTotalTip.Text = total_tip.ToString();
                Session["totaltip"] = total_tip;
                Session["NoOfPpl"] = txtNoOfGuests.Text;
                Session["bill"] = txtBillTotal.Text;
                Session["tax"] = txtTax.Text;
                Session["deduc"] = txtBillDeductions.Text;
                Session["rate"] = lblTipRate.Text;

                float perpersontip = total_tip / noofppl;

                lblPerPersonTip.Text = perpersontip.ToString();

                float total = payableAmount + total_tip;
                lblTotal.Text = total.ToString();

                //lblPerPersonTip.Text=total_tip/
                //lblPerPersonTip.Text = (Int32.Parse(lblTotalTip.Text.ToString()) / Int32.Parse(txtNoOfGuests.ToString())).ToString();
                //lblTotal.Text = (payableAmount + Int32.Parse(lblPerPersonTip.Text.ToString())).ToString();
            }




            if (radTax.SelectedValue == "Yes" && radDeduc.SelectedValue == "No")
            {

                float bill = Int32.Parse(txtBillTotal.Text);
                float deduction = Int32.Parse("0");
                txtBillDeductions.Text = "0";
                float tax = Int32.Parse(txtTax.Text);
                float noofppl = Int32.Parse(txtNoOfGuests.Text);

                float payableAmount = bill - deduction - tax;

                float tip_rate = Int32.Parse(lblTipRate.Text);

                float total_tip = (float)payableAmount * (float)(tip_rate / 100);
                lblTotalTip.Text = total_tip.ToString();
                Session["totaltip"] = total_tip;
                Session["NoOfPpl"] = txtNoOfGuests.Text;
                Session["bill"] = txtBillTotal.Text;
                Session["tax"] = txtTax.Text;
                Session["deduc"] = txtBillDeductions.Text;
                Session["rate"] = lblTipRate.Text;

                float perpersontip = total_tip / noofppl;

                lblPerPersonTip.Text = perpersontip.ToString();

                float total = payableAmount + total_tip;
                lblTotal.Text = total.ToString();

                //lblPerPersonTip.Text=total_tip/
                //lblPerPersonTip.Text = (Int32.Parse(lblTotalTip.Text.ToString()) / Int32.Parse(txtNoOfGuests.ToString())).ToString();
                //lblTotal.Text = (payableAmount + Int32.Parse(lblPerPersonTip.Text.ToString())).ToString();
            }

            if (radTax.SelectedValue == "No" && radDeduc.SelectedValue == "No")
            {

                float bill = Int32.Parse(txtBillTotal.Text);
                float deduction = Int32.Parse("0");
                float tax = Int32.Parse("0");
                txtBillDeductions.Text = "0";
                txtTax.Text = "0";
                float noofppl = Int32.Parse(txtNoOfGuests.Text);

                float payableAmount = bill - deduction - tax;

                float tip_rate = Int32.Parse(lblTipRate.Text);

                float total_tip = (float)payableAmount * (float)(tip_rate / 100);
                lblTotalTip.Text = total_tip.ToString();
                Session["totaltip"] = total_tip;
                Session["NoOfPpl"] = txtNoOfGuests.Text;
                Session["bill"] = txtBillTotal.Text;
                Session["tax"] = txtTax.Text;
                Session["deduc"] = txtBillDeductions.Text;
                Session["rate"] = lblTipRate.Text;

                float perpersontip = total_tip / noofppl;

                lblPerPersonTip.Text = perpersontip.ToString();

                float total = payableAmount + total_tip;
                lblTotal.Text = total.ToString();

                //lblPerPersonTip.Text=total_tip/
                //lblPerPersonTip.Text = (Int32.Parse(lblTotalTip.Text.ToString()) / Int32.Parse(txtNoOfGuests.ToString())).ToString();
                //lblTotal.Text = (payableAmount + Int32.Parse(lblPerPersonTip.Text.ToString())).ToString();
            }

            else //(radTax.SelectedValue == "Yes" && radDeduc.SelectedValue == "Yes")
            {

                float bill = Int32.Parse(txtBillTotal.Text);
                float deduction = Int32.Parse(txtBillDeductions.Text);
                float tax = Int32.Parse(txtTax.Text);
                float noofppl = Int32.Parse(txtNoOfGuests.Text);

                float payableAmount = bill - deduction - tax;

                float tip_rate = Int32.Parse(lblTipRate.Text);

                float total_tip = (float)payableAmount * (float)(tip_rate / 100);
                lblTotalTip.Text = total_tip.ToString();

                Session["totaltip"] = total_tip;
                Session["NoOfPpl"] = txtNoOfGuests.Text;

                Session["bill"] = txtBillTotal.Text;
                Session["tax"] = txtTax.Text;
                Session["deduc"] = txtBillDeductions.Text;
                Session["rate"] = lblTipRate.Text;
                float perpersontip = total_tip / noofppl;

                lblPerPersonTip.Text = perpersontip.ToString();

                float total = payableAmount + total_tip;
                lblTotal.Text = total.ToString();

                //lblPerPersonTip.Text=total_tip/
                //lblPerPersonTip.Text = (Int32.Parse(lblTotalTip.Text.ToString()) / Int32.Parse(txtNoOfGuests.ToString())).ToString();
                //lblTotal.Text = (payableAmount + Int32.Parse(lblPerPersonTip.Text.ToString())).ToString();
            }

        }
        catch (Exception e4)
        {
            lblError.Text = "ERROR : ENTER ALL THE FIELDS FIRST";
        }

    }


    protected void clkTipTailoring(object sender, EventArgs e)
    {

        if (Session["totaltip"] == null)
        {
            lblError.Text = "ERROR : CALCULATE THE TOTAL TIP FIRST";
        }
        else
        {
            Response.Redirect("tip_tailoring.aspx");
        }



    }

    protected void clkTailorTip(object sender, EventArgs e)
    {
        try
        {


            
            txtNoOfGuests.Text = Session["NoOfPpl"].ToString();
            txtBillTotal.Text = Session["bill"].ToString();
            txtTax.Text = Session["tax"].ToString();
            txtBillDeductions.Text = Session["deduc"].ToString();
            lblTipRate.Text = Session["rate"].ToString();


            int num = Int32.Parse(Session["NoOfPpl"].ToString());
            float sum = 0;
            ArrayList name = (ArrayList)Session["Names"];
            ArrayList Tipval = (ArrayList)Session["Values"];

            for (int i = 0; i < num; i++)
            {
                sum = sum + float.Parse(Tipval[i].ToString());
            }

            lblTotalTip.Text = sum.ToString() + " -Tailored value";

            float pers = (float)sum / num;

            lblPerPersonTip.Text = pers.ToString();

            float tailoredsum = sum + float.Parse(Session["bill"].ToString()) - float.Parse(Session["tax"].ToString()) - float.Parse(Session["deduc"].ToString()); ;
            lblTotal.Text = tailoredsum.ToString();






            List<myObject> myList = new List<myObject>();

            int no = Int32.Parse(Session["NoOfPpl"].ToString());
           
            for (int i = 0; i <= no-1; i++)
            {
                myList.Add(new myObject { name = name[i].ToString(), dollar = "$", value = Tipval[i].ToString() });
            }

            rep1.DataSource = myList;
            rep1.DataBind();



        }
        catch (Exception e2)
        {
            lblError.Text = "ERROR : PERFORM THE TIP TAILORNG FIRST";
        }


    }
    protected void clkConfiguringTipItems(object sender, EventArgs e)
  {

    //  txtMin.Text = "0";
      //txtMax.Text = "15";
    
       Session["highRange"] = txtMax.Text;
       Session["lowRange"] = txtMin.Text;
           
          Response.Redirect("config.aspx");
      

     }

 
    
}
