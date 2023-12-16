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
                <div class="col-sm-4" style="min-height:600px; background-color: aqua;"></div>
                <div class="col-sm-8" style="min-height:600px; background-color: aliceblue;;background-image:url('images/fruit.jpg');background-size:100% 100%;">
                    <h2 style="text-align:center;">Admin Login</h2>
                <form class="form-group" method="post" action="controller.jsp">
                    <input type="hidden" name="page" value="login"/>
                    <table class="table" style="width:80%;margin:0 auto;">
                        <tr>
                            <td>Enter Userid</td>
                            <td>
                        <input type="text" name="userid" class="form-control"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Password</td>
                            <td>
                        <input type="password" name="password" class="form-control"/>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Login</button>
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
