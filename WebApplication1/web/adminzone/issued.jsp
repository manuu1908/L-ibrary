<%-- 
    Document   : booking
    Created on : 20 Sep, 2023, 10:20:21 AM
    Author     : Manisha Gupta
--%>

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
                    <h2 style="color:blue;text-align:center;">List of Farmers</h2>
                    <table class="table table-bordered">
                        <tr>
                            <th>Registration Number</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Section</th>
                            <th>Roll Number</th>
                            <th>Aadhar No</th
                        </tr>
                        <%
                          LibraryManager dm=new LibraryManager();
                          ResultSet rs=dm.select("select * from studentinfo");
                          while(rs.next())
                          {
                          
                        %>
                        <tr>
                            <td><%=rs.getString("registrationno")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("class")%></td>
                            <td><%=rs.getString("section")%></td>
                            <td><%=rs.getString("rollno")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td>
                                <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-success">Issue</button>
                                </a>
                            </td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" style="background-color:gold; height: 80px; ">
                    <p style="margin-top:20px ">Copyright &COPY; to Library Management System</p>
                   
                </div>
                <div class="col-sm-6" style="background-color: black; height:80px;">
                    <p style="color: white; margin-top: 20px;">Developed By : Manisha Kumari</p>
                </div>
        </div>
        </div>
    </body>
</html>
<%}%>
