// Richard Patrick
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCartAppliation.Controller;


namespace ShoppingCartAppliation.WebForms
{
    public partial class Checkout : System.Web.UI.Page
    {
        List<CartObject> cartObj = new List<CartObject>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cartObj = (List<CartObject>)Session["Cart"];
                foreach (CartObject c in cartObj)
                {
                    ProductListBox.Items.Add(c.obj.Title + "-" + c.obj.Price.ToString("c"));
                }
                QtyTxtBox.Enabled = false;
            }
        }

        protected void ExitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExitPage.aspx");
        }

        protected void ProductListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            QtyTxtBox.Enabled = true;
            cartObj = (List<CartObject>)Session["Cart"];
            QtyTxtBox.Text = cartObj[ProductListBox.SelectedIndex].Quantity.ToString();
        }

        protected void QtyEditBtn_Click(object sender, EventArgs e)
        {
            cartObj = (List<CartObject>)Session["Cart"];
            int qty;
            if(int.TryParse(QtyTxtBox.Text, out qty))
                {
                    qty = Convert.ToInt32(QtyTxtBox.Text);
                }
            else
            {
                qty = 0;
            }
            if(qty==0)
            {
                cartObj.RemoveAt(ProductListBox.SelectedIndex);
                ProductListBox.Items.RemoveAt(ProductListBox.SelectedIndex); 
            }
            else
            {
                CartObject cart = new CartObject(qty,cartObj[ProductListBox.SelectedIndex].obj);
                cartObj.RemoveAt(ProductListBox.SelectedIndex);
                cartObj.Insert(ProductListBox.SelectedIndex,cart);
            }
        }

        protected void PayBtn_Click(object sender, EventArgs e)
        {
            cartObj = (List<CartObject>)Session["Cart"];
            
            double totalPrice = 0;
            double discountPercentage = 0;
            double totalDiscount = 0;
            foreach(CartObject c in cartObj)
            {
                discountPercentage = c.obj.discountPercentage(c.Quantity);
                totalPrice += (c.obj.Price-(c.obj.Price * discountPercentage))* c.Quantity;
                totalDiscount += discountPercentage;
            }
            
            TotalLbl.Text = "Total amount to pay is: " + totalPrice.ToString("c") + ". You got a discount of: "+totalDiscount.ToString("c");

        }
    }
}