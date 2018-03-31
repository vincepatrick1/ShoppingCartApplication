// Richard Patrick
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCartAppliation.Controller;
using ShoppingCartAppliation.Model;

namespace ShoppingCartAppliation.WebForms
{
    public partial class ShoppingPlazaForm : System.Web.UI.Page
    {
        List<CartObject> cart = new List<CartObject>();
        List<Product> allProducts = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AllAccounts"] == null)
            {
                BuildProducts prodObj = new BuildProducts();
            }
            allProducts = (List<Product>)Session["AllProducts"];
            if(!IsPostBack)
            {
                foreach(Product p in allProducts)
                {
                    if (p.ProductType == "Book")
                    {
                        BookDropDownList.Items.Add(p.Title);
                    }
                    else
                    {
                        DVDDropDownList.Items.Add(p.Title);
                    }
                }

                int selectedIndex = BookDropDownList.SelectedIndex;
                BookPriceValLbl.Text = allProducts[selectedIndex].Price.ToString("c");
                int index = DVDDropDownList.SelectedIndex;
                int count = BookDropDownList.Items.Count;
           
                DVDPriceValLbl.Text = allProducts[index+count].Price.ToString("c");
            }
        }

        protected void CheckoutBtn_Click(object sender, EventArgs e)
        {
            if (Session["Cart"] == null)
            {
                MessageLbl.Text = "One of the quantities must be more than 0. Otherwise, Please Click Exit.";
            }
            else
            {
                Response.Redirect("Checkout.aspx");
            }
        }

        protected void ExitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExitPage.aspx");
        }

        protected void BookDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = BookDropDownList.SelectedIndex;
            BookPriceValLbl.Text = allProducts[selectedIndex].Price.ToString("c");
           
        }

        protected void DVDDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = DVDDropDownList.SelectedIndex;
            int count = BookDropDownList.Items.Count;
            DVDPriceValLbl.Text = allProducts[index + count].Price.ToString("c");
        }
        
        protected void AddItemBtn_Click(object sender, EventArgs e)
        {
            int selectedIndex = BookDropDownList.SelectedIndex;
            int index = DVDDropDownList.SelectedIndex;
            int count = BookDropDownList.Items.Count;

            int bookQty;
            int dvdQty;
            if(int.TryParse(BookQuanTextBox.Text, out bookQty))
            {
                bookQty = Convert.ToInt32(BookQuanTextBox.Text);
            }
            else
            {
                bookQty = 0;
            }
            if (int.TryParse(DVDQuanTextBox.Text, out dvdQty))
            {
                dvdQty = Convert.ToInt32(DVDQuanTextBox.Text);
            }
            else
            {
                dvdQty = 0;
            }

            if (bookQty == 0 && dvdQty == 0)
                {
                    MessageLbl.Text =
                        "One of the quantities must be more than 0. Otherwise, Please Click Exit.";
                }
                else
                {
                    Product bookProd = new Product();
                    Product dvdProd = new Product();
                    bookProd = allProducts[selectedIndex];
                    dvdProd = allProducts[index + count];

                    if (bookQty > 0)
                    {

                        if (Session["Cart"] == null)
                        {
                            CartObject cartObj = new CartObject(bookQty, bookProd);
                            cart.Add(cartObj);
                            Session.Add("Cart", cart);
                        }
                        else
                        {
                            cart = (List<CartObject>)Session["Cart"];
                            CartObject cartObj = new CartObject(bookQty, bookProd);
                            cart.Add(cartObj);
                        }
                    }
                    if (dvdQty > 0)
                    {
                        if (Session["Cart"] == null)
                        {
                            CartObject cartObj = new CartObject(dvdQty, dvdProd);
                            cart.Add(cartObj);
                            Session.Add("Cart", cart);
                        }
                        else
                        {
                            cart = (List<CartObject>)Session["Cart"];
                            CartObject cartObj = new CartObject(dvdQty, dvdProd);
                            cart.Add(cartObj);
                        }
                    }
                }
            }
            
        }
    }
