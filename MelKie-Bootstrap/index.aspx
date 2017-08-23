<asp:content id="indexContent" contentplaceholderid="ContentPlaceHolder1" runat="Server">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <%--<title>MelKie - Your One Stop Online Portal</title>--%>

    <!-- Bootstrap core CSS -->
   <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="modern-business.css" rel="stylesheet">

   <%@ Page Language="C#" MasterPageFile="MelkieMaster.master" Title="MelKie - Your One Stop Online Portal in Melbourne"%>

</head>

<body>
    <header>
       <div>
        <img src="fabian-mardi-119168-Recovered1.jpg" class="img-fluid" alt="Cinque Terre" width="100%" height="80%">
        </div>
         
       <%-- <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <!-- Slide One - Set the background image for this slide in the line below -->
                <div class="carousel-item active" style="background-image: url('https://wallpaperscraft.com/image/space_sky_stars_79233_1920x1080.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Explore your universe</h3>
                        <p>This is a description for the first slide.</p>
                    </div>
                </div>
                <!-- Slide Two - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Second Slide</h3>
                        <p>This is a description for the second slide.</p>
                    </div>
                </div>
                <!-- Slide Three - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3>Third Slide</h3>
                        <p>This is a description for the third slide.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </header>--%>

    <!-- Page Content -->
    <div class="container">

        <h1 class="my-4">Welcome to Melbourne</h1>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">What's yummy here?</h4>
                    <div class="card-body">
                        <p class="card-text">Living in Melbourne and you can still enjoy your hometown food! Search thousands of yummies here and have a look at our tips!</p>
                    </div>
                    <div class="card-footer">
                        <a href="../foodSearching.aspx" class="btn btn-primary">Explore Food</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Transport in Melbourne</h4>
                    <div class="card-body">
                        <p class="card-text">Lost in Melbourne? We've got some guidance for you to hang out with your new friends in Melbourne!</p>
                    </div>
                    <div class="card-footer">
                        <a href="../services.aspx" class="btn btn-primary">Explore Transportation</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Let's have some sports!</h4>
                    <div class="card-body">
                        <p class="card-text">Study is stressful, how about having some sports in some of the best eqquipped courts around you?</p>
                    </div>
                    <div class="card-footer">
                        <a href="../full-width.aspx" class="btn btn-primary">Explore Fitness</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Miscellaneous</h4>
                    <div class="card-body">
                        <p class="card-text">Some general and practicle skills to live in Melbourne, for oversea students like you!</p>
                    </div>
                    <div class="card-footer">
                        <a href="../portfolio-3-col.aspx" class="btn btn-primary">Explore general tips</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Feedback to us</h4>
                    <div class="card-body">
                        <p class="card-text">Want something more? Tell us what you need!</p>
                    </div>
                    <div class="card-footer">
                        <a href="../contact.aspx" class="btn btn-primary">Feedback to Us</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <%--<h2>Portfolio Heading</h2>

        <div class="row">
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Project One</a></h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Project Two</a></h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Project Three</a></h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Project Four</a></h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Project Five</a></h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="#">Project Six</a></h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- /.row -->

 <%--       <div class="jumbotron">
  <h1 class="my-3">What's New For International Students</h1>
  <hr class="my-4">
  <p>Newsletter Goes Here</p>
  <p class="lead">
    <a class="btn btn-primary btn-md" href="#" role="button">Learn more</a>
  </p>
</div>--%>


        <!-- Features Section -->
      <%--  <div class="row">
            <div class="col-lg-6">
                <h2>Something Cool Happens Here:</h2>
                <p></p>
                <p>
                    <br/><br/>
                    Some newsletter goes here
                </p>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="http://placehold.it/700x450" alt="">
            </div>
        </div>--%>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="row mb-4">
            <div class="col-md-8">
                <p>Are you ready for oversea studying?<br/>
                    Explore what's cool happening in melbourne located universities!
                </p>
            </div>
            <div class="col-md-4">
                <a class="btn btn-lg btn-secondary btn-block" href="#">Stay in Tune</a>
            </div>
        </div>
    </div>
    <!-- /.container -->
</body>
 </asp:content>
