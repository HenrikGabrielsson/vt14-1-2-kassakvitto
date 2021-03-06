﻿using System;
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
                if (value <= 0)
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

        //konstruktor
        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

        //metod som räknar ut rabatten och priset efter eventuell prissänkning
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            //Bestäm räntesatsen
            if(Subtotal <= 499)
            {
                DiscountRate = 0;
            }
            else if (Subtotal >= 500 && Subtotal <= 999)
            {
                DiscountRate = 0.05;
            }
            else if(Subtotal >= 1000 && Subtotal <= 4999)
            {
                DiscountRate = 0.1;
            }
            else if(Subtotal >= 5000)
            {
                DiscountRate = 0.15;
            }

            //räntan i kronor
            MoneyOff = Subtotal * DiscountRate;

            //total kostnad
            Total = Subtotal - MoneyOff;

        }


    }
}