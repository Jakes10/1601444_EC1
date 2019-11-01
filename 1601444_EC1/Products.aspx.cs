using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1601444_EC1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //double amt = 0.0;
            List<ProductClass> product = (List<ProductClass>)Session["productObj"]; // casting
            //Console.WriteLine("Size :" + size.Count );

            Session["List"] = product;
            if (product!= null)
            {
                this.ItemAmt.Text = Convert.ToString(product.Count);

                  
            }

            

        }

        protected void Button1_P1(object sender, EventArgs e)
        {
            
            List<ProductClass> size = (List<ProductClass>)Session["productObj"];
            ProductClass product;
            if (size!= null)
            {
               product = new ProductClass((size.Count).ToString(), name_P1.Text, description_P1.Text, category_P1.Text, price_P1.Text, "/Images/product1.jpg");
                AddToCart(product);
            }
            else{
                product = new ProductClass("0", name_P1.Text, description_P1.Text, category_P1.Text, price_P1.Text, "/Images/product1.jpg");

                AddToCart(product);
            }

           
        }

        protected void Button1_P2(object sender, EventArgs e)
        {
            List<ProductClass> size = (List<ProductClass>)Session["productObj"];
            ProductClass product;
            if (size != null)
            {
                product = new ProductClass((size.Count).ToString(), name_P2.Text, description_P2.Text, category_P2.Text, price_P2.Text, "/Images/product2.jpg");
                AddToCart(product);
            }
            else
            {
                product = new ProductClass("0", name_P2.Text, description_P2.Text, category_P2.Text, price_P2.Text, "/Images/product2.jpg");

                AddToCart(product);
            }

        }

        protected void Button1_P3(object sender, EventArgs e)
        {
            List<ProductClass> size = (List<ProductClass>)Session["productObj"];

            ProductClass product;
            if (size != null)
            {
                product = new ProductClass((size.Count).ToString(), name_P3.Text, description_P3.Text, category_P3.Text, price_P3.Text, "/Images/product3.jpg");
                AddToCart(product);
            }
            else
            {
                product = new ProductClass("0", name_P3.Text, description_P3.Text, category_P3.Text, price_P3.Text, "/Images/product3.jpg");
                AddToCart(product);
            }
        }

        protected void Button1_P4(object sender, EventArgs e)
        {
            

            List<ProductClass> size = (List<ProductClass>)Session["productObj"];

            ProductClass product;
            if (size != null)
            {
                product = new ProductClass((size.Count).ToString(), name_P4.Text, description_P4.Text, category_P4.Text, price_P4.Text, "/Images/product4.jpg");
                AddToCart(product);
            }
            else
            {
                product = new ProductClass("0", name_P4.Text, description_P4.Text, category_P4.Text, price_P4.Text, "/Images/product4.jpg");
                AddToCart(product);
            }
        }

        public void AddToCart(ProductClass product)
        {

            //List<ProductClass> index = (List<ProductClass>)Session["productObj"];
            //product.ID1 = Convert.ToString(index.Count);

            // CHECK IF SESSION IS EMPTY
            if (Session["productObj"] == null)
            {
                List<ProductClass> productClass = new List<ProductClass>();
               
                productClass.Add(product);

                Session["productObj"] = productClass;
                
            }
            else
            {
                List<ProductClass> productClass = (List<ProductClass>) Session["productObj"]; // casting

               
                productClass.Add(product);
                Session["productObj"] = productClass;
                
            }
            List<ProductClass> size = (List<ProductClass>)Session["productObj"]; // casting
          
            this.ItemAmt.Text = size.Count.ToString();

        

        }

       
    }
}