<%-- 
    Document   : transaction
    Created on : May 16, 2021, 5:38:48 PM
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
        <title>transaction page Page</title>
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
        <h1 style="text-align: center; color: black;   font-size: 200%;" >Transaction</h1><hr>
        
        <% 
            String Id = request.getParameter("id"); 
            Integer iid = Integer.parseInt(Id);
           int tempid=iid;
            System.out.println(iid);
                String url = "jdbc:mysql://localhost:3306/customer";
                String user ="root";
                String pswd = "";
                Class.forName("com.mysql.jdbc.Driver");
                
                int amt1=0 ;
                String sn=null ;
                int sa=0;
                try
                {
                    Connection con =DriverManager.getConnection(url, user, pswd);
                    Statement st = con.createStatement();
                    String query = "SELECT * from customer_info1 where acnt_no= "+iid+" ";
                    ResultSet rs = st.executeQuery(query);
                    while(rs.next())
                    {
                        amt1 = rs.getInt("balance");
                        sn = rs.getString("name");
                        sa = rs.getInt("acnt_no");
                        %>  
                        <div class="row">
                            <div class="card" style="width: 25rem; border-radius: 15px 50px; margin-left: 15%; margin-top: 1%">
                                    <img class="card-img-top" style="border-radius: 15px 50px" src="16927_en_1.jpg" alt="Card image cap">
                                    <div class="card-body" style="border-radius: 25px" >
                                         <form>
                                            <h1 style="text-align: center; color: black; font-size: 150%;" >SENDER</h1><hr>
                                            <div class="form-row">
                                              <div class="form-group col-md-12">
                                                <label for="inputEmail4">Name</label>
                                                <input type="text" class="form-control" style="border-radius: 25px" value="<%=rs.getString("name") %>" name="namesender" id="inputEmail4" placeholder="Email" readonly="true">
                                              </div>
                                              <div class="form-group col-md-12">
                                                <label for="inputPassword4">Account Number</label>
                                                <input type="text" class="form-control" style="border-radius: 25px" id="input4" value="<%=rs.getInt("acnt_no") %>" name="acntSender" placeholder="Password"  readonly="true">
                                              </div>
                                              <div class="form-group col-md-12">
                                                <label for="inputPassword4">Email</label>
                                                <input type="text" class="form-control" style="border-radius: 25px" id="input4" value="<%=rs.getString("email") %>" name="acntSender" placeholder="email@gmail.com"  readonly="true">
                                              </div>
                                            </div>
                                          </form>
                                    </div>
                                </div>
                     <% }  con.close();
                    rs.close();
                    st.close();
                }
                catch(Exception ex)
                {
                    System.out.println(ex);
                }%>
                    <div class="column" style="margin-left: 10%">
                                    <div class="card" style="width: 25rem; margin-top: 3%; border-radius: 15px 50px">
                                    <img class="card-img-top" src="16927_en_1.jpg" alt="Card image cap" style="border-radius: 15px 50px"> 
                                    <div class="card-body">
                                        <form>
                                             <h1 style="text-align: center; color: black;   font-size: 150%;" >RECIEVER</h1><hr>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                <input type="hidden" class="form-control" name="id" value="<%=iid%>" style="border-radius: 25px" id="inputEmail4" placeholder="Enter name" >
                                              </div>
                                              <div class="form-group col-md-12">
                                                <label for="name">Name</label>
                                                <input type="text" class="form-control" name="nameReciever" style="border-radius: 25px" id="inputEmail4" placeholder="Enter name" >
                                              </div>
                                              <div class="form-group col-md-12">
                                                <label for="acnt_no">Account Number</label>
                                                <input type="text" class="form-control" name="acntReciever" style="border-radius: 25px" id="password" placeholder="Enter account number"  >
                                              </div>
                                                <div class="form-group col-md-12">
                                                    <label for="acnt_no">Transfer Amount</label>
                                                    <input type="number" class="form-control" name="tamt" style="border-radius: 25px" id="password" placeholder="Enter account number"  >
                                                    <br>
                                                   
                                                </div>
                                                
                                                <input type="submit" class="btn btn-info" value="Transfer" name="btn" style="margin-left: 35%; border-radius: 15px 50px">
                                            </div>
                                          </form>

                                    </div>
                                </div>  
                            </div>
                        </div><br><br>
                                
                    <% 
                    if(request.getParameter("btn") != null)
                    {  
                        System.out.println("hello world...............................");
                        String uname = request.getParameter("nameReciever");
                        String acnt = request.getParameter("acntReciever");
                        int amt=Integer.parseInt(request.getParameter("tamt"));
                        
                        try{                      
                        Connection con =DriverManager.getConnection(url, user, pswd);
                        Statement st = con.createStatement();
                        
                        int left=amt1-amt;
                        if(left>=0)
                        {
                            String query2 = "UPDATE customer_info1 SET balance= (balance + "+amt+") where name='"+uname+"' AND acnt_no= "+acnt+" ";
                            String sql = "UPDATE customer_info1 SET balance= (balance - "+amt+") where name='"+sn+"' AND acnt_no= "+sa+" ";
                            int checkOne = st.executeUpdate(query2);
                            int checkTwo = st.executeUpdate(sql);
                            System.out.println(checkOne+" "+checkTwo);
                            if(checkOne!=0&&checkTwo!=0)
                            {
                                %>
                                <script>
                                    var b = <%=amt%>;
                                    alert("Transaction Successful ! \n "+ b +" rs. transfered. ");document.location.href="allCustomers.jsp";
                                </script>
                                <%
                            }
                            else
                            {
                                %>
                                <script>
                                        alert("Try again"); document.location.href="transaction.jsp?id=<%=iid%>";
                                </script>
                                <%
                            }
                           
                        } 
                        else
                        {
                            %>
                                <script>
                                    alert("Amount invalid . try again.."); document.location.href="transaction.jsp?id=<%=iid%>";
                                </script>
                            <%
                        }
                         }catch(Exception ex){
                             System.out.println("error"+ex);
                         }}
                            
                        
                  
                
            
        
        %>
        
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
    </body>
</html>
