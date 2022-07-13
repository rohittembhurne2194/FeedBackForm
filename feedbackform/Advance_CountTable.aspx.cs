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
    public partial class Advance_CountTable : System.Web.UI.Page
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

            SqlDataAdapter da = new SqlDataAdapter("HouseEntryCount", con);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds, "HouseEntryCount");
                Advance_Grdcounttable.DataSource = ds;
                Advance_Grdcounttable.DataBind();
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


        protected void Advance_Grdcounttable_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Advance_Grdcounttable.PageIndex = e.NewPageIndex;
            bindData();
        }

    }
}