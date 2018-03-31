using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCartAppliation.Controller
{
    public class Product
    {

        private string _productType;
        private int _productID;
        private string _title;
        private double _price;

        public String ProductType
        {
            get
            {
                return _productType;
            }
            set
            {
                _productType = value;
            }
        }
        public int ProductID
        {
            get
            {
                return _productID;
            }
            set
            {
                _productID = value;
            }
        }
        public String Title
        {
            get
            {
                return _title;
            }
            set
            {
                _title = value;
            }
        }
        public double Price
        {
            get
            {
                return _price;
            }
            set
            {
                _price = value;
            }
        }
        public double discountPercentage(int quantity)
        {
            if (quantity < 2)
            {
                return 0;
            }
            else if (quantity == 2 || quantity == 3 || quantity == 4)
            {
                return .02;
            }
            else
            {
                return .05;
            }
        }
    }
}