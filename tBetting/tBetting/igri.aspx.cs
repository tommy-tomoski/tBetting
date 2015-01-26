using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace tBetting
{
    public partial class igri : System.Web.UI.Page
    {
            Hand vasaRaka;
            Hand kompRaka;
            Deck spil;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["korisnik"] == null) {
                Response.Redirect("home.aspx");
            }
            if (!IsPostBack)
            {
                vasaRaka = (Hand)Session["vasaRaka"];
                kompRaka = (Hand)Session["kompRaka"];
                spil = (Deck)Session["spil"];
               
            }
            else {
                vasaRaka = new Hand();
                kompRaka = new Hand();
                spil = new Deck();
            }

        }
        protected void btnStart_Click(object sender, EventArgs e)
        {
            
            pnl1.Visible = true;
        }

        protected void btnPodnesi0_Click(object sender, EventArgs e)
        {
            
            pnl2.Visible = true;  
            spil.izmesaj();
            for (int i = 0; i < 2; i++)
            {
                vasaRaka.dodadiKarta(spil.vleciKarta());
                kompRaka.dodadiKarta(spil.vleciKarta());
            }
            tbVasaRaka.Text = vasaRaka.toString();
            tbVasaVrednost.Text = vasaRaka.vrednostToString();
            tbKomRaka.Text = kompRaka.getCard(0).toString() + "\nскриена карта";
            if (kompRaka.getValue() == 21)
            {
                lblStatus.Text = "Компјутерот победи со блекџек!";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }
            if (vasaRaka.getValue() == 21)
            {
                lblStatus.Text = "Честито! Победивте со блекџек!";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }
            Session["vasaRaka"] = vasaRaka;
            Session["kompRaka"] = kompRaka;
            Session["spil"] = spil;
           
        }

        protected void btnUdri_Click(object sender, EventArgs e)
        {
            vasaRaka = (Hand)Session["vasaRaka"];
            kompRaka = (Hand)Session["kompRaka"];
            spil = (Deck)Session["spil"];
            vasaRaka.dodadiKarta(spil.vleciKarta());
            tbVasaRaka.Text = vasaRaka.toString();
            tbVasaVrednost.Text = vasaRaka.getValue().ToString();
            if (vasaRaka.getValue() > 21) {
                lblStatus.Text = "За жал, изгубивте.";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }
            
            Session["vasaRaka"] = vasaRaka;
            Session["kompRaka"] = kompRaka;
            Session["spil"] = spil;
        }

        protected void btnZastani_Click(object sender, EventArgs e)
        {
            vasaRaka = (Hand)Session["vasaRaka"];
            kompRaka = (Hand)Session["kompRaka"];
            spil = (Deck)Session["spil"];
            while (true) {
                if (kompRaka.getValue() > 16) break;
                kompRaka.dodadiKarta(spil.vleciKarta());
            }
            tbKomRaka.Text = kompRaka.toString();
            tbKomRakaVrednost.Text = kompRaka.getValue().ToString();
            if (kompRaka.getValue() > 21) {
                lblStatus.Text = "Ваша победа!";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }
            if (vasaRaka.getValue() < kompRaka.getValue())
            {
                lblStatus.Text = "За жал, изгубивте!";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }
            else if (vasaRaka.getValue() > kompRaka.getValue())
            {
                lblStatus.Text = "Ваша победа!";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }
            else {
                lblStatus.Text = "Нерешено, вие изгубивте!";
                btnUdri.Enabled = false;
                btnZastani.Enabled = false;
            }



        }
        


    }
}