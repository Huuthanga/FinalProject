//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CreditTaskMVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public string product_id { get; set; }
        public string product_name { get; set; }
        public string product_brand { get; set; }
        public string product_model { get; set; }
        public string product_description { get; set; }
        public decimal product_price { get; set; }
        public int product_quantity { get; set; }
        public string product_image { get; set; }
        public System.DateTime product_date_added { get; set; }
    }
}