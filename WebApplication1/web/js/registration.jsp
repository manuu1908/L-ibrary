<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Library Management System</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
            
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height:600px;  background-color: aqua;"></div>
                <div class="col-sm-8" style="min-height:600px; background-image:url('images/farmer3.jpg'); background-size:100% 100%;">
               <h2 style="text-align:center;color:blue;"> Student Registration Form</h2>
               <form class="form-group" method="post" action="controller.jsp">
                    <input type="hidden" name="page" value="registration"/>
                    <table class="table table-border" style="width:80%;margin:auto;">
                        <tr>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">Enter Name</td>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">
                        <input type="text" name="name" class="form-control"style="background-color:rgba(0,0,0,0); color:white;"/>
                            </td>
                        </tr>
                         
                        <tr>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">Select Gender</td>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">
                               
                                 <input type="radio" name="gender" value="Male" class="form-check-input" style="background-color:rgba(0,0,0,0); color:white;"/>Male
                                  <input type="radio" name="gender" value="Female" class="form-check-input" style="background-color:rgba(0,0,0,0); color:white;"/>Female
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">Enter Roll No</td>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">
                                <input type="text" name="rollno" style="background-color:rgba(0,0,0,0); color:white;"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">Enter Aadhar No</td>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">
                                <input type="text" name="aadharno" style="background-color:rgba(0,0,0,0); color:white;"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;"></td>
                            <td style="background-color:rgba(0,0,0,0.5); color:white;">
                                <button type="submit" class="btn btn-success" style="background-color:rgba(0,0,0,0); color:white;">Submit</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div> 
            </div>
           <jsp:include page="footer.jsp"/>
        </div>  
    </body>
</html>

