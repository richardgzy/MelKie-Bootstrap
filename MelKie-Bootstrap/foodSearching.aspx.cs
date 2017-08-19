using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MelKie_Bootstrap
{
    public partial class foodSearching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            map1.Attributes["src"] = "https://www.google.com/maps/embed/v1/search?q=chinese%20restaurant%20in%20melbourne%20CBD&key=AIzaSyAABKsQey-XPjwR-wtUdWPtf7VqS-MXS7k";

        }



        private void searchButton_Click(object sender, EventArgs e)
        {
            String baseString = "https://www.google.com/maps/embed/v1/search?q=";
            String APIkey = "&key=AIzaSyAABKsQey-XPjwR-wtUdWPtf7VqS-MXS7k";

            String query = searchBox1.Text.Trim();
            if (query != null){
                String[] temp = query.Split(' ');
                int count = 0;
                
                foreach (String s in temp){
                    if (count == 0)
                    {
                        baseString += s;
                    }
                    else
                    {
                        baseString += "%20" + s;
                    }
                    count++;
                }
            }

            map1.Attributes["src"] = baseString + APIkey;
        }

        protected void searchButton_Click_2(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            searchBox1.Text = btn.Text;
            searchButton_Click(sender, e);
        }
    }
}