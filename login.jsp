<%-- 
    Document   : login
    Created on : May 16, 2021, 5:17:05 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css" >
        <title>Login</title>
    </head>
    <body style="background-image: url('pic123.png');  background-size: 90em ">
        <script>
            function sendToRegister()
            {
                document.location.href = "register.jsp";
            }
        </script>
        
        <h1 style="margin-left: 40%; margin-top: 15%; color: white">Login Page</h1><br>
        <div class="container">
            <div class="row">
                <div class="span2 well col-lg-8">
                   
                    <!--<div class="alert alert-danger alert-dismissable">
                        <span class="glyphicon glyphicon-warning-sign"></span>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        Incorrect Username or Password!
                    </div>-->
                     <form method="POST" style="margin-left: 40%" action="" accept-charset="UTF-8">
                         <div class="input-group input-group-sm">
                            <span class="glyphicon glyphicon-user input-group-addon"></span>
                            <input type="text" id="username" class="form-control input-medium" name="name" placeholder="Username" value="${userName}">
                         </div><br>
                        <div class="input-group input-group-sm">
                            <span class="glyphicon glyphicon-lock input-group-addon"></span>
                            <input type="password" id="password" class="form-control" name="password" placeholder="Password" value="${pass}">
                        </div><br>
                        <label class="checkbox">
                            <input type="checkbox" name="remember" value="1"> Remember Me
                        </label><br>
                        <button type="submit" name="button" class="btn btn-info btn-block">Sign in</button>
                     </form>    
                </div>
            </div>
        </div> 
       
        <%! String uname,pass; %>
        <%
            if(request.getParameter("button") != null)
            {
                uname = request.getParameter("name");
                pass = request.getParameter("password");
                String url = "jdbc:mysql://localhost:3306/customer";
                String user ="root";
                String pswd = "";
                Class.forName("com.mysql.jdbc.Driver");
                try
                {
                    Connection con =DriverManager.getConnection(url, user, pswd);
                    Statement st = con.createStatement();
                    String query = "select * from login where email ='"+uname+"' and password = '"+pass+"' ";
                    ResultSet rs = st.executeQuery(query);
                    if(rs.next())
                    {
                        response.sendRedirect("home.jsp");
                    }
                    else
                    {
                        %>
                        <script>
                                alert("Invalid username or password"); document.location.href="login.jsp";
                        </script>
                        <%
                    }
                    con.close();
                    rs.close();
                    st.close();
                }
                catch(Exception ex)
                {
                    System.out.println(ex);
                }
                
                System.out.println("Username: "+ uname +"  Password: " + pass);
            }
        %>
        <footer class="page-footer font-small stylish-color-dark pt-4" style="background-color: black; margin-top: 20%">

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
    <script type="text/javascript" src="bootstrap.min.js"></script>
    
    <script type="text/javascript" src="jquery.js" ></script>
</html>
