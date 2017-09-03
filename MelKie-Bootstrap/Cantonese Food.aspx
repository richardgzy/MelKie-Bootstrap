<asp:content id="CantoneseFoodContent" contentplaceholderid="ContentPlaceHolder1" runat="Server">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

     <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
     <%@ Page Language="C#" MasterPageFile="~/MelkieMaster.master" Title="Cantonese Food"%>
</head>

<body>
        <script runat="server">

        protected void searchButton_Click(object sender, EventArgs e)
        {
            String baseString = "https://www.google.com/maps/embed/v1/search?q=";
            String APIkey = "&key=AIzaSyAABKsQey-XPjwR-wtUdWPtf7VqS-MXS7k";

            String query = searchBox1.Text.Trim();
            if (!query.Equals(""))
            {
                String[] temp = query.Split(' ');
                int count = 0;

                foreach (String s in temp)
                {
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

                map1.Attributes["src"] = baseString + APIkey;
            }
            else
            {
                String myStringVariable = "Please Enter a Restaurant Name or the Food Name you Like!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
        }

        protected void ingredientSearchClick(object sender, EventArgs e)
        {
            String baseString = "https://www.google.com/maps/embed/v1/search?q=";
            String APIkey = "&key=AIzaSyAABKsQey-XPjwR-wtUdWPtf7VqS-MXS7k";

            LinkButton btn = sender as LinkButton;
            String query = btn.Text.Trim();
            if (!query.Equals(""))
            {
                String[] temp = query.Split(' ');
                int count = 0;

                foreach (String s in temp)
                {
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

                map2.Attributes["src"] = baseString + APIkey;
            }
            else
            {
                String myStringVariable = "Please Enter a Restaurant Name or the Food Name you Like!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
        }

        protected void searchButton_Click_2(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            searchBox1.Text = btn.Text;
            searchButton_Click(sender, e);
        } 

        protected void showRestaurantPanel(object sender, EventArgs e)
        {
            restaurant_container.Visible = true;
            ingredient_container.Visible = false;
        }

        protected void showIngredientPanel(object sender, EventArgs e)
        {
            restaurant_container.Visible = false;
            ingredient_container.Visible = true;
        }
</script>
    <!-- Page Content -->

        <%--<div class="row">
            <div class="col-lg-4">
                <div class="dropdown">
                  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select Your Country
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>China</li>
                    <li>India</li>
                    <li>Pakistan</li>
                  </ul>
                </div>
             </div>
                <div class="col-lg-4">
                <div class="dropdown">
                  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select Your Region
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>China</li>
                    <li>India</li>
                    <li>Pakistan</li>
                  </ul>
                </div>
             </div>
                <div class="col-lg-4">
                <div class="dropdown">
                  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Explore Restaurant or Ingredients
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>Restaurants</li>
                    <li>ingredients</li>
                  </ul>
                </div>
             </div>
        </div>--%>
        
    <div class="container" style="padding-top: 10px">    
        <!-- Page Heading/Breadcrumbs -->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.aspx">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a href="countryPage.aspx">Select Your Country</a>
            </li>
            <li class="breadcrumb-item active">Cantonese Food</li>
        </ol>
        <%--jumbotron--%>
      <div class="jumbotron">
            
            <h1 style="color:slategrey">Cantonese Food</h1>
          <hr class="my-4">
            <p>Cantonese food originates from Guangdong, the southern province in China. The majority of overseas Chinese people are from Guangdong (Canton), so Cantonese is perhaps the most widely available Chinese regional cuisine.
Cantonese are known to have an adventurous palate, able to eat many different kinds of meats and vegetables. Guangdong cuisine is familiar to Westerners. It tastes clear, light, crisp and fresh, and usually chooses raptors and beasts to produce originate dishes. Its basic cooking techniques include roasting, stir-frying, sautéing, deep-frying, braising, stewing and steaming. Among them steaming and stir-frying are more commonly applied to preserve the natural flavour. Guangdong chefs also pay much attention to the artistic presentation of dishes.
The most popular Cantonese food to Westerners is Yum Cha.</p>
          <br /> <h5>Explore this Cusine by:</h5>
          <div class="btn-group">
              <asp:Button runat="server" Text="Explore Authentic Restaurants" class="btn btn-primary" OnClick="showRestaurantPanel" />
              <asp:Button runat="server" Text="Explore Ingredients and Supermarkets" class="btn btn-primary" OnClick="showIngredientPanel" />
          </div>
        </div>
    </div>

          <div class="container">
              <asp:Panel runat="server" ID="restaurant_container">
        <div class="row">
            <div class="col-lg-8">
                <iframe name="map1" runat="server" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31224.716081041628!2d144.941694258861!3d-37.812666728601904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+VIC+3000!5e0!3m2!1sen!2sau!4v1503060434835"
                        width="100%" height="460px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="map1"></iframe>

                 <div class="card mb-12"> 
                    <%--<h5 class="card-header">Search</h5>--%>
                    <div class="card-body">
                        <div class="input-group">
                            <asp:TextBox id="searchBox1" runat="server" type="text" class="form-control" placeholder="search your favorite food">
                                </asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button id="searchButton" class="btn btn-secondary" type="button" runat="server" onclick="searchButton_Click" Text="Go!" />
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header" role="tab" id="headingCatonese">
                        <h5>The Most Authentic Cantonese Experiences Happens Here</h5>
                    </div>
                </div>

            <div class="mb-4" id="Aaccordion" role="tablist" aria-multiselectable="true">
            <div class="card">
                <div class="card-header" role="tab" id="AheadingOne">
                    <h5 class="mb-0">
                        <a data-toggle="collapse" data-parent="#Aaccordion" href="#AcollapseOne" aria-expanded="true" aria-controls="AcollapseOne">Flower Drum
                        </a>
                    </h5>
                </div>
                <div id="AcollapseOne" class="collapse show" role="tabpanel" aria-labelledby="AheadingOne">
                    <div class="card-body">
                        Flower Drum is located on Little Bourke street in Chinatown. It was established by Gilbert Lau from 1975. Flower Drum is a notable multi-award winning Chinese cuisine restaurant in Melbourne. If you want to taste traditional Cantonese food, This is a must go.
                        <br/> <strong>Click <asp:LinkButton runat="server" ID="getRestaurantLocationButtonS" Text="Flower Drum" OnClick="searchButton_Click_2"/> to get location</strong>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header" role="tab" id="AheadingTwo">
                    <h5 class="mb-0">
                        <a class="collapsed" data-toggle="collapse" data-parent="#Aaccordion" href="#AcollapseTwo" aria-expanded="false" aria-controls="AcollapseTwo">RuYi Modern Chinese
                        </a>
                    </h5>
                </div>
                <div id="AcollapseTwo" class="collapse" role="tabpanel" aria-labelledby="AheadingTwo">
                    <div class="card-body">
                       RuYi Modern Chinese is rated as the best Chinese restaurant in 2017. The meaning for RuYi is “as you wish” in life. Also, the restaurant is willing to make customers smiling when they are in RuYi. The special dishes are Pork and Crab Shao Long Bao, Peking duck cone and Bao Bao.
                        <br/> <strong>Click <asp:LinkButton runat="server" ID="LinkButton1" Text="RuYi Modern Chinese" OnClick="searchButton_Click_2"/> to get location</strong>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" role="tab" id="AheadingThree">
                    <h5 class="mb-0">
                        <a class="collapsed" data-toggle="collapse" data-parent="#Aaccordion" href="#AcollapseThree" aria-expanded="false" aria-controls="AcollapseThree">Crystal Jade Restaurant
                        </a>
                    </h5>
                </div>
                <div id="AcollapseThree" class="collapse" role="tabpanel" aria-labelledby="AheadingThree">
                    <div class="card-body">
                        Crystal Jade Restaurant is well known by its Yum Cha. Yum Cha is one of the most popular traditional meal of Cantonese food, involving Chinese tea and dim sum. Dim sum has various types of steamed buns such as prawn dumpling, cha siu bao and rice noodle rolls.
                        <br/> <strong>Click <asp:LinkButton runat="server" ID="LinkButton2" Text="Crystal Jade Restaurant" OnClick="searchButton_Click_2"/> to get location</strong>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" role="tab" id="AheadingFour">
                    <h5 class="mb-0">
                        <a class="collapsed" data-toggle="collapse" data-parent="#Aaccordion" href="#AcollapseFour" aria-expanded="false" aria-controls="AcollapseFour">Tim Ho Wan
                        </a>
                    </h5>
                </div>
                <div id="AcollapseFour" class="collapse" role="tabpanel" aria-labelledby="AheadingFour">
                    <div class="card-body">
                        The restaurant name is translated from “Add good luck”. The restaurant is well known by making high-quality dim sum by Chef Mak and Chef Leung. Tim Ho Wan becomes one of the Michelin-starred brand restaurants from 2009.
                        <br/> <strong>Click <asp:LinkButton runat="server" ID="LinkButton3" Text="Tim Ho Wan" OnClick="searchButton_Click_2"/> to get location</strong>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" role="tab" id="AheadingFive">
                    <h5 class="mb-0">
                        <a class="collapsed" data-toggle="collapse" data-parent="#Aaccordion" href="#AcollapseFive" aria-expanded="false" aria-controls="AcollapseFive">Pacific BBQ Café
                        </a>
                    </h5>
                </div>
                <div id="AcollapseFive" class="collapse" role="tabpanel" aria-labelledby="AheadingFive">
                    <div class="card-body">
                        Pacific BBQ Café is a high price-quality ratio restaurant. The popular dishes are Cha Siu, roast goose and roasted pork. A delicious meal is only $15 per person, and the afternoon tea is under $10 with the popular pineapple bun and special milk tea.
                        <br/> <strong>Click <asp:LinkButton runat="server" ID="LinkButton4" Text="Pacific BBQ Café" OnClick="searchButton_Click_2"/> to get location</strong>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <hr class="my-4">

        <div class="container">
            <h5>The Most Authentic Cantonese Cusine Can Be Found in Melbourne</h5>

            <div class="row" style="padding-top: 10px">
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/food/Cha_Siu_Bao.jpg" alt="Cha Siu Bao (Barbecue Pork Bun)" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Cha Siu Bao (Barbecue Pork Bun)</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/food/Beef Chow Fun .jpg" alt="Beef Chow Fun (Beef Fried Noodles)" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Beef Chow Fun (Beef Fried Noodles)</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/food/Claypot Rice.jpg" alt="Claypot Rice" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Claypot Rice</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/food/Congee.jpg" alt="Congee" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Congee</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/food/Roast goose.jpg" alt="Beef Chow Fun (Beef Fried Noodles)" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Roast goose</h6>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="my-4">
        </div>
            

        </div>
				</asp:Panel>
           <div class="container">
               <asp:Panel runat="server" ID="ingredient_container" Visible="false">
            <h5>Making Cantonese Food at Home? Here are some must have in Melbourne!</h5>
            <div class="row" style="padding-top: 10px">
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/ingredient/Dark Soy sauce.jpg" alt="Cha Siu Bao (Barbecue Pork Bun)" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Dark Soy Sauce</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/ingredient/Light soy sauce.jpg" alt="Beef Chow Fun (Beef Fried Noodles)" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Light Soy Sauce</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/ingredient/Oyster sauce.jpg" alt="Oyster sauce" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Oyster Sauce</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/ingredient/Seafood sauce.jpg" alt="Seafood sauce" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Seafood Sauce</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="card h-70">
                        <img class="card-img-top" src="../region_search_pic/Cantonese_Food/ingredient/Shrimp sauce.jpg" alt="Shrimp sauce" height="100px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text">Shrimp Sauce</h6>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="my-4">
                   <h5>Where Can I Find Those Ingredients?</h5>
                   <div class="container" style="padding-top:15px">
                       <div class="row">
                           <div class="col-lg-8">
                <iframe name="map2" runat="server" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31224.716081041628!2d144.941694258861!3d-37.812666728601904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+VIC+3000!5e0!3m2!1sen!2sau!4v1503060434835"
                        width="100%" height="300px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="map2"></iframe>
                            </div>
                           <div class="col-lg-4">
                               <div class="card h-100">
                                    <div class="card-body">
                                        <h4 class="card-title">Groceries List</h4>
                                        <ul>
                                            <li><asp:LinkButton runat="server" ID="LinkButton5" Text="Tokyo Hometown Japanese Supermarket" OnClick="ingredientSearchClick"/></li>
                                             <li><asp:LinkButton runat="server" ID="LinkButton6" Text="Central grocery" OnClick="ingredientSearchClick"/></li>
                                             <li><asp:LinkButton runat="server" ID="LinkButton7" Text="Crown Asian" OnClick="ingredientSearchClick"/></li>
                                             <li><asp:LinkButton runat="server" ID="LinkButton8" Text="Tang Food Emporium" OnClick="ingredientSearchClick"/></li>
                                             <li><asp:LinkButton runat="server" ID="LinkButton9" Text="Hong Kong Supermarket" OnClick="ingredientSearchClick"/></li>
                                        </ul>
                                    </div>
                                </div>
                           </div>
                       </div>
                   </div>

           </asp:Panel>
        </div>

          </div>
</body>

</asp:content>
