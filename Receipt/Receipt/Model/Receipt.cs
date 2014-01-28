using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReceiptWriter.Model
{

    public class Receipt
    {
        private double _subtotal;

        //Egenskaper
        public double DiscountRate
        {
            get;
            set;
        }

        public double MoneyOff
        {
            get;
            set;
        }

        public double Subtotal
        {
            get 
            {
                return _subtotal;
            }
            set
            {
                if(value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                else
                {
                    _subtotal = value;
                }
            }
        }


        public Double Total
        {
            get;
            set;
        }

        //metod som räknar ut rabatten och priset efter eventuell prissänkning //EJ KLAR
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            
        }


    }
}