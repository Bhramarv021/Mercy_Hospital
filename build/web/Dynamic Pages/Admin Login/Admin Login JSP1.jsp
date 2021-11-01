<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <script>
function fun(){
	alert("Enter Valid Details");
    }
</script>
        <%
        String A_Email,A_Pass;
        A_Email = request.getParameter("U_name");
        A_Pass = request.getParameter("P_word");
        
        try
        {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection cn = DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
        PreparedStatement st = cn.prepareStatement("select * from  ADMIN_DETAILS where EMAIL_ID = ? and PASSWORD = ?");
        st.setString(1,A_Email);
        st.setString(2,A_Pass);
        ResultSet rs = st.executeQuery();
        
        if(rs.next())
        {
            String nm = rs.getString(2);
            session.setAttribute("A_Name",nm);
            session.setAttribute("id",A_Email);
           %>
            <jsp:forward page="../Admin Pages/Admin_Side.jsp"/>
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
