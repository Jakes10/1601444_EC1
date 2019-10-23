using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1601444_EC1
{

    public class ProductClass
    {
        private string ID;
        private string name;
        private string description;
        private string category;
        private string price;
        private string imageSrc;

            public ProductClass(  string ID, string name, string description, string category, string price, string imageSrc)
            {
                this.ID1=ID;
                this.Name=name;
                this.Description= description;
                this.Category= category;
                this.Price= price;
                this.ImageSrc= imageSrc;

        }

        

        public string ID1 { get => ID; set => ID = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public string Category { get => category; set => category = value; }
        public string Price { get => price; set => price = value; }
        public string ImageSrc { get => imageSrc; set => imageSrc = value; }
    }
}