
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World DONE!</h1>
        <%
            String PEml = request.getParameter("PEmail");
            session.setAttribute("P_eml_delete",PEml);
            %>
                    <jsp:forward page="../Patient Pages/Patient Deleted.jsp"/>
                    <%
            %>
            
    </body>
</html>
