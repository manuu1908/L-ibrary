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
                    <h2 style="color:blue;text-align:center;">Book Issue Form</h2>
                    <%
                       String aadharno=session.getAttribute("ano").toString();
                       LibraryManager dm=new LibraryManager();
                       String query="select * from studentinfo where aadharno='"+aadharno+"'";
                       ResultSet rs=dm.select(query);
                       if(rs.next())
                       {
                      
                    %>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="book"/>
                        <table class="table table-bordered" style="margin:auto;width:70%;">
                            <tr>
                                <td>Registration Number</td>
                                <td>
                                    <input type="text" name="regid" value="<%=rs.getString("registrationno")%>" class="form-control" readonly/>
                                </td>
                            </tr> 
                            <tr>
                                <td>Student Name</td>
                                <td>
                                    <input type="text" name="name" value="<%=rs.getString("name")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Class</td>
                                <td>
                                    <input type="text" name="class" value="<%=rs.getString("class")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Section</td>
                                <td>
                                    <input type="text" name="section" value="<%=rs.getString("section")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Roll  Number</td>
                                <td>
                                    <input type="text" name="rollno" value="<%=rs.getString("rollno")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Aadhar Number</td>
                                <td>
                                    <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table>   
                    </form>
                    <% } %>
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



