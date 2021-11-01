<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
    margin : 10px;
    padding : 10px;
    font-size: 1em;
    background-color:#66ffcc;
    text-align: center;
}
</style>
    </head>
    <body>
        <%
            try
            {
                
            String Pid = (String) session.getAttribute("P_Added_eml");
            out.print("Data For Patient ");
            out.print(Pid);
            out.print(" is successfully added");
            
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
                
                PreparedStatement st=cn.prepareStatement("select * from ADMIN_DETAILS where EMAIL_ID = ?");
                st.setString(1,Pid);
                
                ResultSet rs = st.executeQuery();
                      
            %>
            <br><br>        
            <button> <a href="../../index.html"> Back to Home </a> </button>
            <br><br>
            <table border="1">
                
               <tr>
           
                      <td> Gender</td>
                      <td> First_name</td>
                      <td> Last_name</td>
                      <td> Address</td>
                      <td> City</td>
                      <td> State</td>
                      <td> Phone_number</td>                     
                      <td> DOB </td>
                      <td> Email_id</td>
                      <td> Password</td>
                      
                </tr>
               
                <%
                //    int x=1;
                    while(rs.next())
                        {
                            %>
                            <tr>
                                <td> <% out.print(rs.getString("GENDER"));%></td>
                                <td> <% out.print(rs.getString("FIRST_NAME"));%></td>
                                <td> <% out.print(rs.getString("LAST_NAME"));%></td>
                                <td> <% out.print(rs.getString("ADDRESS"));%></td>
                                <td> <% out.print(rs.getString("CITY"));%></td>
                                <td> <% out.print(rs.getString("STATE"));%></td>
                                <td> <% out.print(rs.getString("PHONE_NO"));%></td>
                                <td> <% out.print(rs.getString("DOB"));%></td>
                                <td> <% out.print(rs.getString("EMAIL_ID"));%></td>
                                <td> <% out.print(rs.getString("PASSWORD"));%></td>
                                
                            <%
                  //              x++;
                        } 
              %>
    </table>
              
              <%
            }
            
         
               catch(Exception ex)
            {
                out.print(ex);
                }
                %>

</body>
</html>
