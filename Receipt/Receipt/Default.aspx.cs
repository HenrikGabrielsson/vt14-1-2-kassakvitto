using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReceiptWriter.Model;

namespace ReceiptWriter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cost.Focus();
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            //skapa ett nytt Receipt
            var cost = double.Parse(Cost.Text);
            Receipt receipt = new Receipt(cost);

            //skapa och visa kvittot
            ReceiptSubtotal.Text += String.Format("{0:c}",receipt.Subtotal);
            ReceiptDiscountRate.Text += String.Format("{0:p}",receipt.DiscountRate);
            ReceiptMoneyOff.Text += String.Format("{0:c}",receipt.MoneyOff);
            ReceiptTotal.Text += String.Format("{0:c}",receipt.Total);

            ReceiptPanel.Visible = true;


        }
    }
}