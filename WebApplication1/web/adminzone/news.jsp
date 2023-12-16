<%@page import="java.sql.ResultSet"%>
<%@page import="library.LibraryManager"%>
<%
if(session.getAttribute("adminid")==null)
{
response.sendRedirect("../login.jsp");
}
else
{




%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Library Management System</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
       
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px; background-color: aliceblue">
                    <h2 style="color:blue;text-align:center;">Add News & Events</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                        
                        <table class="table table-bordered" style="width:70%;margin:auto">
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                           <td>
                          <button type="submit" class="btn btn-outline-sucess">Add</button>

                            </tr>
                            
                        </table>
                    </form>
                    <br/>
                    <h2 style="text-align:center;color:blue;">News Management</h2>
                    <table class="table table-bordered" style="width:80%; margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                           LibraryManager dm=new LibraryManager();
                           ResultSet rs=dm.select("select * from news");
                           while (rs.next())
                           {
                        %>
                        <tr>
                                    <td><%=rs.getInt("id")%></td>
                                    <td><%=rs.getString("newstext")%></td>
                                    <td><%=rs.getString("posted")%></td>
                                    <td>
                                        <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                            <button class="btn btn-danger">Delete</button>
                                        </a>
                                    </td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" style="background-color:gold; height: 80px; ">
                    <p style="margin-top:20px ">Copyrigh &COPY; to Farmer Merchent integration</p>
                   
                </div>
                <div class="col-sm-6" style="background-color: black; height:80px;">
                    <p style="color: white; margin-top: 20px;">Developed By : Manisha Kumari</p>
                </div>
        </div>
        </div>
    </body>
</html>
<%}%>

