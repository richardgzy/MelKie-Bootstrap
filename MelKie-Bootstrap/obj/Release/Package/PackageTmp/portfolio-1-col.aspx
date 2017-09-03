<asp:content id="portfolio1colContent" contentplaceholderid="ContentPlaceHolder1" runat="Server">
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
    <%@ Page Language="C#" MasterPageFile="~/MelkieMaster.master" Title="Portfolio 1"%>
</head>

<body>
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Food Culture and Tips For You</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.aspx">Home</a>
            </li>
            <li class="breadcrumb-item active">Food Culture and Tips</li>
        </ol>

        <!-- Project One -->
        <div class="row">
            <div class="col-md-4">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="food_articles/japanese_food_1.jpg" alt="">
                </a>
            </div>
            <div class="col-md-8">
                <h3>Let's Explore Japanese Cuisine</h3>
                <p>Japanese cuisine offers an abundance of gastronomical delights with a boundless variety of regional and seasonal dishes as well as international cuisine. Two of the most popular Japanese cuisine are Ramen and Sashimi. </p>
                <a class="btn btn-primary" href="food_articles/portfolio-item1.aspx">Read More<span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Project Two -->
        <div class="row">
            <div class="col-md-4">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="food_articles/chinese_food_1.jpg" alt="">
                </a>
            </div>
            <div class="col-md-8">
                <h3>The Beauty of Chinese Food</h3>
                <p>Chinese cuisine is an important constituent part of Chinese culture. Rather than using forks, chopsticks are the major eating utensils for Chinese dishes that can be used to pick up the food. The most essential characteristics of Chinese food comprise of color, aroma, and taste. </p>
                <a class="btn btn-primary" href="food_articles/portfolio-item2.aspx">Read More<span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Project Three -->
        <div class="row">
            <div class="col-md-4">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="food_articles/korean_food_1.jpg" alt="">
                </a>
            </div>
            <div class="col-md-8">
                <h3>You Should Try These Korean Food!</h3>
                <p>Korean Cuisine is mainly relied on grains, vegetables and meats. There are various side dishes are involved in Korean food as well. The most special and exotic side dish is “Kimchi”, which is made from salted and fermented vegetables that almost always served with every kinds of Korean meals. “Kimchi” is famous for the appetite like pickles that contains amounts of good nutritious such as vitamin C, and fiber.</p>
                <a class="btn btn-primary" href="food_articles/portfolio-item3.aspx">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>
        <a> More tips to go...</a>
        <%--<!-- Project Four -->
        <div class="row">

            <div class="col-md-7">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Four</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
                <a class="btn btn-primary" href="#">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>--%>
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
       <%-- <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>--%>

    </div>
    <!-- /.container -->

</body>

</asp:content>
