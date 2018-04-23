using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace MasterColumnsOnDetailPage {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e) {
            ASPxGridView1.DataSource = GetData();
        }

        private DataTable GetData() {
            DataTable table = new DataTable();
            table.Columns.Add("ID", typeof(int));
            table.Columns.Add("Category");
            table.Columns.Add("Description");
            table.Rows.Add(1, "Beverages", "Soft drinks, coffees, teas, beers, and ales");
            table.Rows.Add(2, "Condiments", "Sweet and savory sauces, relishes, spreads, and seasonings");
            table.Rows.Add(3, "Confections", "Desserts, candies, and sweet breads");
            return table;
        }

        protected void Page_Load(object sender, EventArgs e) {
            ASPxGridView1.DataBind();
        }
    }
}
