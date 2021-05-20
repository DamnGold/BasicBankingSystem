<%-- 
    Document   : viewDetails
    Created on : May 16, 2021, 5:33:01 PM
    Author     : LuckyGold
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css" >
        <title>view details Page</title>
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
                <h1 style="text-align: center; color: black;   font-size: 200%;" >View Details</h1><hr>
        
        <% 
            String Id = request.getParameter("id"); 
            Integer iid = Integer.parseInt(Id);
            System.out.println(iid);
                String url = "jdbc:mysql://localhost:3306/customer";
                String user ="root";
                String pswd = "";
                Class.forName("com.mysql.jdbc.Driver");
                try
                {
                    Connection con =DriverManager.getConnection(url, user, pswd);
                    Statement st = con.createStatement();
                    String query = "SELECT * from customer_info1 where acnt_no= "+Id+" ";
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next())
                    {
                        %>  
                        <div class="card" style="width: 27rem; margin-left: 33%;border-radius: 15px 50px; margin-top: 3%">
                                <img class="card-img-top" src="16927_en_1.jpg" style="border-radius: 15px 50px" alt="Card image cap">
                                <div class="card-body">
                                    <form>
                                        <div class="form-row">
                                          <div class="form-group col-md-6">
                                            <label for="inputEmail4">Name</label>
                                            <input type="lable" class="form-control" value="<%=rs.getString("name") %>" style="border-radius: 15px 50px" id="inputEmail4" placeholder="Email" readonly="true">
                                          </div>
                                          <div class="form-group col-md-6">
                                            <label for="inputPassword4">Account Number</label>
                                            <input type="lable" class="form-control" id="input"passwordPassword4" style="border-radius: 15px 50px" value="<%=rs.getInt("acnt_no") %>" placeholder="Password"  readonly="true">
                                          </div>
                                        </div>
                                        <div class="form-group">
                                          <label for="inputAddress">Email</label>
                                          <input type="lable" class="form-control" id="inputAddress" style="border-radius: 15px 50px" value="<%=rs.getString("email") %>" placeholder="email@gmail.com"  readonly="true">
                                        </div>
                                        <div class="form-group">
                                          <label for="inputAddress2">Phone Number</label>
                                          <input type="lable" class="form-control" style="border-radius: 15px 50px" value="<%=rs.getInt("phn_no") %>" id="inputAddress2" placeholder="Phn no"  readonly="true">
                                        </div>
                                        
                                          <div class="form-group ">
                                              <label for="inputCity">Balance</label>
                                            <input type="text"  class="form-control" value="<%=rs.getInt("balance") %>" style="border-radius: 15px 50px" id="inputCity"  readonly="true">
                                          </div>
                                        
                                        <a href="allCustomers.jsp" class="btn btn-primary" style="border-radius: 15px 50px">back</a>
                                        
                                      </form>
                                 
                                </div>
                            </div>
                            
                        <%
                    }
                    con.close();
                    st.close();
                }
                catch(Exception ex)
                {
                    System.out.println(ex);
                }
                
        %>
        <!-- Footer -->
        <footer class="page-footer font-small stylish-color-dark pt-4" style="background-color: black; margin-top:13%">

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
    </body>
      <script type="text/javascript" src="jquery.js" ></script>
    <script type="text/javascript" src="bootstrap.min.js" ></script>
</html>
