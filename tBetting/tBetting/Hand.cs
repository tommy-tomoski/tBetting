using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tBetting
{
    public class Hand
    {
        private List<Card> raka = new List<Card>();

        public void iscisti() {
            raka.Clear();
        }

        public Card getCard(int pozicija) {
            if (pozicija >= 0 && pozicija < raka.Count) {
                return (Card)raka.ElementAt(pozicija);
            }
            return null;
        }

        public void dodadiKarta(Card karta) {
            if (karta != null) {
                raka.Add(karta);
            }
        }

        public int getCardCount() {
            return raka.Count;
        }

        public int getValue() {
            int vrednost;
            bool kec;
            int karti;

            vrednost = 0;
            kec = false;
            karti = getCardCount();

            for (int i = 0; i < karti; i++) {
                Card karta = getCard(i);
                int vrednostKarta = Math.Min(karta.vrednost, 10);

                if (vrednostKarta == 1) {
                    kec = true;
                }

                vrednost = vrednost + vrednostKarta;
            }

            if (kec == true && vrednost + 10 <= 21) {
                vrednost = vrednost + 10;
            }

            return vrednost;
        }

        public string toString() {
            string ruka = ""; 
            for (int i = 0; i < raka.Count; i++) {
                ruka += raka[i].toString() + "\n";
            }
            return ruka;
        }
        public string vrednostToString() { 
            string raka = getValue().ToString();
            return raka;
        }
    }
}