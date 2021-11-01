
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
        <%
        String Doc_email,D_Pass;
        Doc_email = request.getParameter("D_ID");
        D_Pass = request.getParameter("P_word");
        
        try
        {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection cn = DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
        PreparedStatement st = cn.prepareStatement("select * from  DOCTOR_DETAILS where EMAIL_ID = ? and PASSWORD = ?");
        st.setString(1,Doc_email);
        st.setString(2,D_Pass);
        ResultSet rs = st.executeQuery();
        
        if(rs.next())
        {
            String D_Name = rs.getString(2);
            String D_Email = rs.getString(13);
            session.setAttribute("D_name",D_Name);
            session.setAttribute("D_eml",D_Email);
            %>
            <jsp:forward page="../Doctor Login/Doctor_side.jsp"/>
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
