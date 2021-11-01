
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try
            {
                String P_Email = (String) session.getAttribute("Eml");
                out.print(P_Email);
                //session.setAttribute("P_eml",P_email);
                //String old_opt = request.getParameter("Select_Column");
                //String old_val = request.getParameter("old_value");
                String update_opt = request.getParameter("Update_Column");
                String update_val = request.getParameter("new_value");       
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
                PreparedStatement st = cn.prepareStatement("Update PATIIENT_DETAILS set ? = '?' where EMAIL_ID = ?");
                st.setString(1,update_opt);
                st.setString(2,update_val);
                st.setString(3,P_Email);
                //st.setString(4,old_val);
                //ResultSet rs = st.executeQuery();
                
                //System.out.print(old_val);
                int rs = st.executeUpdate();
                if(rs>0)
                {
                    out.print("Successfull");
                    
                }
                else
                {
                    out.print("Not Successfull");
                }
            }
        catch(Exception ex)
        {
                out.print(ex);
        }
       
        %>        

    </body>
</html>