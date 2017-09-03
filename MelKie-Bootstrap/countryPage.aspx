<asp:content id="fullWidthContent" contentplaceholderid="ContentPlaceHolder1" runat="Server">
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
     <%@ Page Language="C#" MasterPageFile="MelkieMaster.master" Title="Select Your Country"%>
</head>

<body>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Select Your Country</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="../index.aspx">Home</a>
            </li>
            <li class="breadcrumb-item active">Select Your Country</li>
        </ol>

        <div class="container">
            <div class="row" style="padding: 10px">
                <div class="col-lg-4">
                    <div class="card h-70">
                        <img class="card-img-top" src="../China.jpg" alt="China" height="200px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text"><a href="Cantonese Food.aspx">China</a></h6>
                            <a style="color:darkgray">59,939 international fellows from China in VIC</a><br/>
                            <a style="color:darkgray">150,393 international fellows from China in Australia</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card h-70">
                        <img class="card-img-top" src="../pakistan.png" alt="pakistan" height="200px" width="100%">
                        <div class="card-body">
                            <h6 class="card-text"><a href="Cantonese Food.aspx">Pakistan</a></h6>
                            <a style="color:darkgray">11,097 international fellows from Pakistan in Australia</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->
</body>
</asp:content>
