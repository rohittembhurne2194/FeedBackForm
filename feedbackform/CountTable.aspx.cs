using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
namespace feedbackform
{
    public partial class CountTable : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=202.65.157.253;Initial Catalog=LIVEDevSwachhBharatMain;User ID=appynitty;Password=BigV$Telecom");
         //SqlConnection con = new SqlConnection("Data Source=APPY-3;Initial Catalog=DevSwachhBharatMain;User ID=sa;Password=Appy_1234;");

        //SqlConnection con = new SqlConnection("Data Source=APPY-10;Initial Catalog=SauchalayFeedback;User ID=sa;Password=sa@123;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                bindData();

            }
        }
        public void bindData()
        {

            SqlDataAdapter da = new SqlDataAdapter("HouseEntryCount", con);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds, "HouseEntryCount");
                Grdcounttable.DataSource = ds;
                Grdcounttable.DataBind();
            }
            catch (Exception e)
            {
                Response.Write(e.Message);
            }
            finally
            {
                ds.Dispose();
                da.Dispose();
                con.Dispose();
            }
        }


        protected void Grdcounttable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grdcounttable.PageIndex = e.NewPageIndex;
            bindData();
        }


    //    protected void TxtSearch_TextChanged1(object sender, EventArgs e)
    //    {
           
    //        if (TxtSearch.Text == "")
    //        {

    //            bindData();

    //        }
    //        else
    //        {
             
    //            SqlCommand com = new SqlCommand("HouseEntryCount_byappname", con);
    //            com.CommandType = CommandType.StoredProcedure;
    //            com.Parameters.AddWithValue("@appName", TxtSearch.Text.Trim());
    //            SqlDataAdapter sda = new SqlDataAdapter(com);
    //            DataTable dt = new DataTable();
    //            sda.Fill(dt);
    //            Grdcounttable.DataSource = dt;
    //            Grdcounttable.DataBind();
    //        }
        

       
    //}

       
    }
}