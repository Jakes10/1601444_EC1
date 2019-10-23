using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1601444_EC1
{
    public partial class Cart : System.Web.UI.Page
    {

        //static DataTable table1 = new DataTable("productsTable");
        //static DataSet set = new DataSet("office");


        protected void Page_Load(object sender, EventArgs e)
        {
            double amt = 0.0;
            List<ProductClass> product = (List<ProductClass>)Session["productObj"]; // casting
                                                                                    //Console.WriteLine("Size :" + size.Count );



            if (product != null)
            {
                Session["List"] = product;
                for (var i = 0; i < product.Count; i++)
                {
                    amt += Convert.ToDouble(product[i].Price);

                }
                this.ItemAmt.Text = Convert.ToString(product.Count);
            }

            Session["SubTotal"] = amt.ToString();

            this.Repeater1.DataSource = product;
            this.Repeater1.DataBind();
            this.subTotal.Text = (string)(Session["SubTotal"]);
            this.shipping.Text = ((Convert.ToDouble(Session["SubTotal"]) / 100) * 5.15).ToString();
            this.Total.Text = (Convert.ToDouble(Session["SubTotal"]) + Convert.ToDouble(this.shipping.Text)).ToString();


        }

        public void RemoveItem(object sender, EventArgs e)
        {


            //if (!Page.IsPostBack)
            //  {


            //this.Label1.Text = "HEY THERE";
            //}
            List<ProductClass> product = (List<ProductClass>)Session["List"];

            LinkButton btn = (LinkButton)(sender);
            string id = btn.CommandArgument;

            //this.Label1.Text = id;
            for (var i = 0; i < product.Count; i++)
            {
                if (product[i].ID1 == id)
                {
                    //Label l = e.Item.FindControl("name1") as Label;
                    string rowIndex = (((sender as LinkButton).NamingContainer as RepeaterItem).FindControl("name1") as Label).Text;
                      rowIndex.ToString();
                    //  
                    //int index = Convert.ToInt32(id);
                    //this.Label1.Text = e.Item.ItemIndex;
                    //this.Label1.Text = index.ToString()+" was removed";
                    product.RemoveAt(Convert.ToInt32(id));
                    Response.Redirect("/Cart.aspx");
                }

            }
            //foreach (ProductClass k in product)
            //{
            //    this.Label1.Text = k.ID1;
            //}
            //product.RemoveAt(product.Count-101);
        }


    }





}