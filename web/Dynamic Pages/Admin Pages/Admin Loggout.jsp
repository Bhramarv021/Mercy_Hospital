
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Loggout</title>
    </head>
    <body>
    <h1>  hello </h1>
        <%
          try
          {
              session.removeAttribute("id");
              response.sendRedirect("../../index.html");
          }
          catch(Exception ex)
          {
              out.print(ex);
          }
        %>
    </body>
</html>
