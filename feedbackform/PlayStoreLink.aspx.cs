using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace feedbackform
{
    public partial class PlayStoreLink : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=202.65.157.253;Initial Catalog=LIVEDevSwachhBharatMain;User ID=appynitty;Password=BigV$Telecom");
        //SqlConnection con = new SqlConnection("Data Source=APPY-3;Initial Catalog=DevSwachhBharatMain;User ID=sa;Password=Appy_1234;");
        //SqlConnection con = new SqlConnection("Data Source=APPY-10;Initial Catalog=SauchalayFeedback;User ID=sa;Password=sa@123;");

       // SqlConnection con = new SqlConnection("Data Source=192.168.200.3;Initial Catalog=DevSwachhBharatMain;User ID=sa;Password=Appy_1234");
        protected void Page_Load(object sender, EventArgs e)
        {

            string AppID = Request.QueryString["AppID"];
            
            string sql = string.Empty;

            if (!string.IsNullOrEmpty(AppID))
            {
                sql = "select AppID, ULBlink  from Feedback_playstore where AppID=" + AppID;
            }
            else
            {
                sql = "select AppID, ULBlink  from Feedback_playstore";
            }
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();

                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();

                    try
                    { 
                    HdnappId.Value = sdr["AppID"].ToString();
                    Hdnlink.Value = sdr["ULBlink"].ToString();
                    }
                    catch (Exception ex)
                    {
                        Console.Write("Incorrect URL.");

                    }

                }
                con.Close();
            }

        }
     

        }
}