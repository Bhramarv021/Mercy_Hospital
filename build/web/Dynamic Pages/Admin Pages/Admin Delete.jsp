
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Patient</title>
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
        <form action="../Admin Pages/FORM FORWARDED.jsp">
            <br> Enter Email To Delete Records <input type="Email" name="PEmail" placeholder="Email">
            <input type="Submit" value="Delete">
            <input type="Reset" value="Cancel"> 
            <br> <br>
        </form>
        <%
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
                
                PreparedStatement st=cn.prepareStatement("select * from ADMIN_DETAILS");
                ResultSet rs = st.executeQuery();
            %>
            
           <table border="1">
                
               <tr>
           
                      <th> Gender</th>
                      <th> First_name</t>
                      <th> Last_name</th>
                      <th> Address</th>
                      <th> City</th>
                      <th> State</th>
                      <th> Phone_number</th>                     
                      <th> DOB</th>
                      <th> Email_id</th>
                      <th> Password</th>
                      
                     
                </tr>
               
                <%
                    int x=1;
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
                                x++;
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
