using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Receipt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TotalCost.Focus();
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {

        }
    }
}