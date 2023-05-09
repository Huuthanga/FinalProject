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
    
    public partial class Order
    {
        public string order_id { get; set; }
        public string reseller_id { get; set; }
        public string agent_id { get; set; }
        public System.DateTime order_date { get; set; }
        public string product_name { get; set; }
        public int quantity { get; set; }
        public decimal price { get; set; }
        public string status_payment { get; set; }
    
        public virtual Agent Agent { get; set; }
        public virtual Reseller Reseller { get; set; }
    }
}
