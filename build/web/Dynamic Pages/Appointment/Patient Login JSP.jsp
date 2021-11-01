
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String P_Eid,P_Pass;
        P_Eid = request.getParameter("U_name");
        P_Pass = request.getParameter("P_word");
        
        try
        {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection cn = DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
        PreparedStatement st = cn.prepareStatement("select * from  PATIIENT_DETAILS where EMAIL_ID = ? and PASSWORD = ?");
        st.setString(1,P_Eid);
        st.setString(2,P_Pass);
        ResultSet rs = st.executeQuery();
        
        if(rs.next())
        {
            String name = rs.getString(2);
            String eml = rs.getString(8);
            session.setAttribute("P_Name",name);
            session.setAttribute("P_Email",eml);
            %>
            <jsp:forward page="../Appointment/Appointment.html"/>
            <%
        }
            else
            {
                    %>
                    <script type="text/javascript"> fun(); </script>
                    <%
            }
        }
            
            
        catch(Exception ex)
                {
                out.print(ex);
                }
        %>
                
    </body>
</html>
