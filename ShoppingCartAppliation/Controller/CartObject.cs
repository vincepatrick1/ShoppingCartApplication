using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCartAppliation.Controller
{
    public class CartObject
    {
        private int _quantity;
        private Product _obj;
        public CartObject(int quantity, Product prodObj)
        {
            _quantity = quantity;
            _obj = prodObj;
        }
        public int Quantity
        {
            get
            {
                return _quantity;
            }
        }
        public Product obj
        {
            get
            {
                return _obj;
            }
        }

    }
}
