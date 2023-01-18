<%-- 
    Document   : addproject
    Created on : May 14, 2022, 11:38:51 PM
    Author     : adeeb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Project</title>
        <!--<!-- css -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/myStyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 94%, 68% 91%, 31% 96%, 0 89%, 0 0);
            }
        </style>
    </head>
    <body>
        <!-- navbar -->
        <%@include file="logged_navbar.jsp" %>
        <% if(user.getPermission() == 0){
                response.sendRedirect("waiting.jsp");
            }
        %>
        <main>
            <div class="container-fluid primary-background banner-background text-center text-white mt-1 p-4">
                <form action="AddPojectServlet" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Project Idea</label>
                        <input name="idea" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Project Idea">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Project Feature</label>
                        <input name="feature" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Project Feature">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Add repository file link</label>
                        <input name="link" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter link">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlFile1">Add repository zip file</label>
                        <input name="repo" type="file" class="form-control-file text-center m-3" id="exampleFormControlFile1">
                    </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </main>
        <!-- javaScript -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        </main>
    </body>
</html>
