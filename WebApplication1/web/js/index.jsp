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
        <div class="container" style="background-color:rgba(0,0,0,0.4);height:1000px;">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                
                <div class="col-sm-12" style="min-height:600px;">
                    <video autoplay loop muted plays-inline class="background-clip">
                        <source src="images/index.mp4" type="video/mp4"/>
                    </video>
                    
                         <h1 style="font-size: 95px;color:#fff;margin-bottom:50px;">Explore More</h1>
                         <a href="#" style="font-size:23px;color:#fff;text-decoration: none;border: 2px solid #fff;padding: 15px 25px;border-radius: 50px;transition: 0.3s;">Start Exploring</a>
                    
                </div>
            </div>
           <jsp:include page="footer.jsp"/>
           
        </div>  
    </body>
</html>
