using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace tBetting
{
    public enum boja { 
        срце,
        баклава,
        детелина,
        лист
    }
    public class Card
    {
        public boja Boja;
        public int vrednost;

        public Card(int vrednost, boja Boja) {
            this.vrednost = vrednost;
            this.Boja = Boja;
        }

        public string zemiVrednostKakoString() {
            switch (vrednost) {
                case 1:
                    return "кец";
                case 2:
                    return "двојка";
                case 3:
                    return "тројка";
                case 4:
                    return "четврка";
                case 5:
                    return "петка";
                case 6:
                    return "шестка";  
                case 7:
                    return "седумка";
                case 8:
                    return "осумка";
                case 9:
                    return "деветка";
                case 10:
                    return "десетка";
                case 11:
                    return "џандар";
                case 12:
                    return "дама";
                case 13:
                    return "поп";
                default:
                    return "";
            }
        }

        public string toString() {
            return zemiVrednostKakoString() + " " + Boja;
        }
    }
}