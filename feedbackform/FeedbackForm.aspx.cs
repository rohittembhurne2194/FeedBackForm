using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;
using System.Data;

namespace feedbackform
{
    public partial class FeedbackForm : System.Web.UI.Page
    {
       SqlConnection con = new SqlConnection("Data Source=202.65.157.253;Initial Catalog=LIVEAdvanceDevSwachhBharatMain;User ID=appynitty;Password=BigV$Telecom");
        //SqlConnection con = new SqlConnection("Data Source=APPY-3;Initial Catalog=DevSwachhBharatMain;User ID=sa;Password=Appy_1234;");

        //SqlConnection con = new SqlConnection("Data Source=192.168.200.3;Initial Catalog=DevSwachhBharatMain;User ID=sa;Password=Appy_1234");

        //SqlConnection con = new SqlConnection("Data Source=APPY-10;Initial Catalog=SauchalayFeedback;User ID=sa;Password=sa@123;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string que1 = "";

            if (rdbtn1.Checked == true)

            {

                que1 = "Yes";

            }

            if (rdbtn2.Checked == true)

            {

                que1 = "No";

            }


            string que2 = "";

            if (rdbtn3.Checked == true)

            {

                que2 = "Yes";

            }

            if (rdbtn4.Checked == true)

            {

                que2 = "No";

            }



            string que3 = "";

            if (rdbtn5.Checked == true)

            {

                que3 = "Yes";

            }

            if (rdbtn6.Checked == true)

            {

                que3 = "No";
        
            }
            string rating = "";
            if (Rdbstar7.Checked == true)
            {
                rating = "7";
            }
            
            if (Rdbstar6.Checked == true)
            {
                rating = "6";
            }
            if (Rdbstar5.Checked==true)
            {
                rating = "5";
            }
            if (Rdbstar4.Checked == true)
            {
                rating = "4";
            }

            if (Rdbstar3.Checked == true)
            {
                rating = "3";
            }
            if (Rdbstar2.Checked == true)
            {
                rating = "2";
            }
            if (Rdbstar1.Checked == true)
            {
                rating = "1";
            }

            //Added By Rohit
            string que5 = "";
            if (RadioButton1.Checked == true)
            {
                que5 = "Yes";
            }
            if (RadioButton2.Checked == true)
            {
                que5 = "No";
            }

            string que6 = "";
            if (RadioButton3.Checked == true)
            {
                que6 = "Yes";
            }
            if (RadioButton4.Checked == true)
            {
                que6 = "No";
            }

            string que7 = "";
            if (RadioButton5.Checked == true)
            {
                que7 = "Yes";
            }
            if (RadioButton6.Checked == true)
            {
                que7 = "No";
            }

            string que8 = "";
            if (RadioButton7.Checked == true)
            {
                que8 = "Yes";
            }
            if (RadioButton8.Checked == true)
            {
                que8 = "No";
            }

            string que9 = "";
            if (RadioButton9.Checked == true)
            {
                que9 = "Yes";
            }
            if (RadioButton10.Checked == true)
            {
                que9 = "No";
            }

            string que10 = "";
            if (RadioButton11.Checked == true)
            {
                que10 = "Yes";
            }
            if (RadioButton12.Checked == true)
            {
                que10 = "No";
            }

            string que11 = "";
            if (RadioButton13.Checked == true)
            {
                que11 = "Yes";
            }
            if (RadioButton14.Checked == true)
            {
                que11 = "No";
            }
            SqlCommand cmd = new SqlCommand("insert into Sauchalay_feedback values('" +hdnulb.Value + "','" + hdnsid.Value + "','" + hdnAppId.Value  + "','" + txtfullname.Text + "','" + txtmobile.Text + "','" + que1 + "','" + que2 + "','" + que3 + "','" + rating + "',  '" + txtfeedback.Text + "','" + DateTime.Now + "','" + que5 + "','" + que6 + "','" + que7 + "','" + que8 + "','" + que9 + "','" + que10 + "','" + que11 + "')", con);

            cmd.CommandType = CommandType.Text;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();


                if (hdnLangId.Value == "1")
                {
                    con.Close();
                    Response.Redirect("~/thankyou.html?lang=1");
                }
            if (hdnLangId.Value == "2")
                {
                    con.Close();
                    Response.Redirect("~/thankyou.html?lang=2");
                }

             if (hdnLangId.Value == "3")
                {
                    con.Close();
                    Response.Redirect("~/thankyou.html?lang=3");
                }

                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

            }

            catch (Exception ex)

            {



            }

    }
      
    }
}