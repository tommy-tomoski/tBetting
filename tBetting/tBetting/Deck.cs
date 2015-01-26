using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tBetting
{
    public class Deck
    {
        private Card[] spil;
        private int koristeniKarti;

        public Deck() { 
            init();
        }

        protected void init() {
            spil = new Card[52];
            int brojac = 0;
            for (int bojaBr = 0; bojaBr <= 3; bojaBr++) {
                boja Boja = (boja)bojaBr;
                for (int vrednost = 1; vrednost <= 13; vrednost++) {
                    spil[brojac++] = new Card(vrednost, Boja);
                }
            }

            koristeniKarti = 0;
        }

        public void izmesaj() {
            for (int i = 51; i > 0; i--) {
                Random rnd = new Random();
                int random = rnd.Next(0, i + 1);
                Card pom = spil[i];
                spil[i] = spil[random];
                spil[random] = pom;
            }
            koristeniKarti = 0;
        }

        public Card vleciKarta() {
            if (koristeniKarti == 52) {
                izmesaj();
            }
            return spil[koristeniKarti++];
        }
    }
}