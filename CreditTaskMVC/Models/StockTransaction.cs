using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class StockTransaction
    {
        public string product_name { get; set; }
        public int transaction_type { get; set; }
        public int transaction_date { get; set; }
        public int quantity { get; set; }
    }
}