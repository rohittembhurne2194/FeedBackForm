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
    public partial class GoogleHit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=202.65.157.253;Initial Catalog=LIVEDevSwachhBharatMain;User ID=appynitty;Password=BigV$Telecom");
       // SqlConnection con = new SqlConnection("Data Source=APPY-3;Initial Catalog=DevSwachhBharatMain;User ID=sa;Password=Appy_1234;");

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

            SqlDataAdapter da = new SqlDataAdapter("select Id,API,EmailId,Date,hit from GoogelHitDetails", con);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds, "DevSwachhBharatMain");
                Grdgooglehit.DataSource = ds;
                Grdgooglehit.DataBind();
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


        protected void Grdgooglehit_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grdgooglehit.PageIndex = e.NewPageIndex;
            bindData();
        }
    }
}