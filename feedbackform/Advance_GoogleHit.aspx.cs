using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace feedbackform
{
    public partial class Advance_GoogleHit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=202.65.157.253;Initial Catalog=LIVEAdvanceDevSwachhBharatMain;User ID=appynitty;Password=BigV$Telecom");

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
                Advance_Grdgooglehit.DataSource = ds;
                Advance_Grdgooglehit.DataBind();
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


        protected void Advance_Grdgooglehit_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Advance_Grdgooglehit.PageIndex = e.NewPageIndex;
            bindData();
        }
    }
}