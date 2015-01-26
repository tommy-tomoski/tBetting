using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace tBetting
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void btnRegistracija_Click(object sender, EventArgs e)
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
            SqlCommand komanda = new SqlCommand();
            komanda.Connection = konekcija;
            komanda.CommandText = "INSERT into Korisnik (username, pass, saldo) VALUES (@username, @pass, @saldo)";
            komanda.Parameters.AddWithValue("@username", registerName.Text);
            komanda.Parameters.AddWithValue("@pass", registerPass.Text);
            komanda.Parameters.AddWithValue("@saldo", registerSaldo.Text);
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
            }
            catch (Exception err) { }
            finally { konekcija.Close(); }

            registerName.Text = "";
            registerPass.Text = "";
            registerSaldo.Text = "";
            lblStatus.Text = "Успешна регистрација! Можете да продолжите на другите страни.";
            Session["korisnik"] = 1;
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View2);
        }

        
    }
}