
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Loggout</title>
    </head>
    <body>
    <h1>  hello </h1>
        <%
          try
          {
              session.removeAttribute("P_Name");
              session.removeAttribute("P_Email");
              response.sendRedirect("Patient Login.html");
          }
          catch(Exception ex)
          {
              out.print(ex);
          }
        %>
    </body>
</html>
