<%-- 
    Document   : home
    Created on : May 16, 2021, 5:25:17 PM
    Author     : LuckyGold
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css" >
        
        <script>
            function sendToViewDetails()
            {
                document.location.href = "viewDetails.jsp";
            }
            function sendToTransaction()
            {
                document.location.href = "transaction.jsp";
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
    </head>
    <body style="background-color: gainsboro  ">
        <div class='container-fluid' width=100%  style="margin:0px; padding:0px">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
                <a class="navbar-brand" href="#">Bank of Persona</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="allCustomers.jsp">All Customers<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown active">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Add</a>
                        <a class="dropdown-item" href="#">Update</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">View Customer</a>
                      </div>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link disabled" href="#" style="margin-left:450%; ">persona@gmail.com</a>
                    </li>
                  </ul>
                  
                </div>
              </nav>
        </div>
        <br><h6 style="text-align: center; color: white; font-size: 400%; background-color: navy " >BANK OF PERSONA</h6><hr>
        
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img height=50%; src="b_bank.jpeg" class="d-block w-100"   alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h3>Welcome </h3>
                  <p>Welcome to our bank "Bank of Persona"</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="bbank.jpeg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Internship</h5>
                  <p>web development internship at GRIP At The Spark Foundation</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="cashbank.jpeg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Frontend / Backend </h5>
                  <p>Java + MySQL(Xampp) + HTML + CSS + JSP + Javascript + Bootstrap</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        <br>
     
         <br>
         <div class="row" style="margin-left: 7%">
         <div  class="card " style=" width: 35em; text-align: center " >
            <h5 class="card-header"n style="background-color: #007bff ; color:white">Customers</h5>
            <div class="card-body">
              <h5 class="card-title">View all customers here</h5>
              <p class="card-text">A new page is provided to provide all details of customers</p>
              <a href="allCustomers.jsp" class="btn btn-info">View Customers</a>
            </div>
        </div>
        <div class="column"style="margin-left: 5%">        
        <div  class="card " style=" width: 35em; text-align: center " >
            <h5 class="card-header"n style="background-color: #007bff ; color:white">Transaction</h5>
            <div class="card-body">
              <h5 class="card-title">Add customer</h5>
              <p class="card-text">Here you can add customer in the bank</p>
              <a href="#" class="btn btn-info">Add Customer</a>
            </div>
        </div>
        </div>
          </div>
         
         
         
    <footer class="page-footer font-small stylish-color-dark pt-4" style="background-color: black ; margin-top:13%">

          <!-- Footer Links -->
          <div class="container text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

              <!-- Grid column -->
              <div class="col-md-4 mx-auto">

                <!-- Content -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Bank of Persona</h5>
                <p style="color: white ">This is a basic banking website (Bank of Persona) <br> developed for internship <br> at GRIP At The Spark Foundation. <br>The backend used here is -> Java + MySQL(Xampp),<br> The frontend used here is -> HTML + CSS + Javascript + JSP + Bootstrap   </p>

              </div>
              <!-- Grid column -->

              <hr class="clearfix w-100 d-md-none">

              <!-- Grid column -->
              <div class="col-md-2 mx-auto">

                <!-- Links -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Links</h5>

                <ul class="list-unstyled">
                  <li>
                    <a href="#!">persona (instagram)</a>
                  </li>
                  <li>
                    <a href="#!">Persona (facebook)</a>
                  </li>
                  <li>
                    <a href="#!">BbankPersona (Github)</a>
                  </li>
                  <li>
                    <a href="#!">Persona (linkedin)</a>
                  </li>
                </ul>

              </div>
              <!-- Grid column -->

              <hr class="clearfix w-100 d-md-none">

              <!-- Grid column -->
              <div class="col-md-2 mx-auto">

                <!-- Links -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Frontend/Backend</h5>

                <ul class="list-unstyled">
                  <li>
                    <a href="#!">Java</a>
                  </li>
                  <li>
                    <a href="#!">MySQL (Xampp)</a>
                  </li>
                  <li>
                    <a href="#!">HTML/CSS/JSP</a>
                  </li>
                  <li>
                    <a href="#!">Javascript/Bootstrap</a>
                  </li>
                </ul>

              </div>
              <!-- Grid column -->

              <hr class="clearfix w-100 d-md-none">

              <!-- Grid column -->
              <div class="col-md-2 mx-auto">

                <!-- Links -->
                <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color: white ">Internship</h5>

                <ul class="list-unstyled">
                  <li>
                    <a href="#!">GRIP</a>
                  </li>
                  <li>
                    <a href="#!">The Spark Foundation</a>
                  </li>
                  
                </ul>

              </div>
              <!-- Grid column -->

            </div>
            <!-- Grid row -->

          </div>
          <!-- Footer Links -->

          <hr>

          <!-- Call to action -->
          <ul class="list-unstyled list-inline text-center py-2">
            <li class="list-inline-item">
              <h5 class="mb-1" style="color: white ">Register for free</h5>
            </li>
            <li class="list-inline-item">
              <a href="#!" class="btn btn-danger btn-rounded">Sign up!</a>
            </li>
          </ul>
          <!-- Call to action -->

          <hr>

          <!-- Social buttons -->
          <ul class="list-unstyled list-inline text-center">
            <li class="list-inline-item">
              <a class="btn-floating btn-fb mx-1">
                <i class="fab fa-facebook-f"> </i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-tw mx-1">
                <i class="fab fa-twitter"> </i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-gplus mx-1">
                <i class="fab fa-google-plus-g"> </i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-li mx-1">
                <i class="fab fa-linkedin-in"> </i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-dribbble mx-1">
                <i class="fab fa-dribbble"> </i>
              </a>
            </li>
          </ul>
          <!-- Social buttons -->

          <div class="footer-copyright text-center py-3" style="color: white ">© 2020 Copyright:
            <a href="#"> Persona@gmail.com</a>
          </div>    
          
          
          
        </footer>
        <!-- Footer -->
    </body>
    
    <script type="text/javascript" src="jquery.js" ></script>
    <script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
