<asp:content id="blog1Content" contentplaceholderid="ContentPlaceHolder1" runat="Server">

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="foodSearching.aspx.cs" Inherits="MelKie_Bootstrap.foodSearching" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
     <%@ Page Language="C#" MasterPageFile="~/MelkieMaster.master" Title="searching Page" AutoEventWireup="true" CodeBehind="foodSearching.aspx.cs" Inherits="MelKie_Bootstrap.searchingPage"%>
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
</script>

</head>
<body>
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Search Yummies in Melbourne</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.aspx">Home</a>
            </li>
            <li class="breadcrumb-item active">Search Yummies in Melbourne</li>
        </ol>

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">

                <!-- Blog Post -->
                <%--<div class="card mb-4">
                    <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title">Post Title</h2>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                        <a href="#" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted on January 1, 2017 by <a href="#">Start Bootstrap</a>
                    </div>
                </div>--%>

                <!-- Blog Post -->
                <div class="card mb-4">
                    <%--<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title">Post Title</h2>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                        <a href="#" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted on January 1, 2017 by <a href="#">Start Bootstrap</a>
                    </div>--%>


                   <%-- google map--%>


                    <iframe name="map1" runat="server" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31224.716081041628!2d144.941694258861!3d-37.812666728601904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b8c21cb29b%3A0x1c045678462e3510!2sMelbourne+VIC+3000!5e0!3m2!1sen!2sau!4v1503060434835"
                        width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id
                        ="map1"></iframe>

                </div>

                <!-- Blog Post -->
                <div class="card mb-4">
                    <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title">Not Sure? Lets see what we got for you</h2>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                        <a href="portfolio-1-col.aspx" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted on January 1, 2017 by <a href="#">Start Bootstrap</a>
                    </div>
                </div>

                <!-- Pagination -->
                <%--<ul class="pagination justify-content-center mb-4">
                    <li class="page-item"><a class="page-link" href="#">&larr; Older</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#">Newer &rarr;</a></li>
                </ul>--%>

            </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Search Widget -->
                <div class="card mb-4"> 
                    <h5 class="card-header">Search</h5>
                    <div class="card-body">
                        <div class="input-group">
                            <asp:TextBox id="searchBox1" runat="server" type="text" class="form-control" placeholder="Search for...">
                                </asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button id="searchButton" class="btn btn-secondary" type="button" runat="server" onclick="searchButton_Click" Text="Go!" />
                            </span>
                        </div>
                    </div>
                </div>

                <!-- Categories Widget -->
                <div class="card my-4">
                    <h5 class="card-header">Categories</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="#">Chinese Food</a></li>
                                    <li><a href="#">Indian Food</a></li>
                                    <li><a href="#">Japanese Food</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="#">Aussie Food</a></li>
                                    <li><a href="#">Korean Food</a></li>
                                    <li><a href="#">Cafe</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Side Widget -->
                <div class="card my-4">
                    <h5 class="card-header">Side Widget</h5>
                    <div class="card-body">
                        You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
</body>
</html>
    </asp:content>
