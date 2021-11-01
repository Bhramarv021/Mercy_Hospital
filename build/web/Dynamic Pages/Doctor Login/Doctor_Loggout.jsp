
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Loggout</title>
    </head>
    <body>
        <%
          try
          {
              session.removeAttribute("D_name");
              session.removeAttribute("D_eml");
              response.sendRedirect("Doctor Login.html");
          }
          catch(Exception ex)
          {
              out.print(ex);
          }
        %>
    </body>
</html>
