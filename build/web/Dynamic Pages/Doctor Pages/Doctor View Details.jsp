
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
    background-color:#66ffcc;
}
        </style>
    </head>
    <body>
        <%
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
                
                
                PreparedStatement st=cn.prepareStatement("select * from DOCTOR_DETAILS");
                ResultSet rs = st.executeQuery();
            %>
          <h2 align="center"> DOCTOR DATA </h2>           
           <table border="1">
                
               <tr>
           
                      <td> Gender</td>
                      <td> First_name</td>
                      <td> Last_name</td>
                      <td> DOB</td>
                      <td> Address</td>
                      <td> City</td>
                      <td> State</td>
                      <td> Phone_number</td>                     
                      <td> Qualification</td>
                      <td> Department</td>
                      <td> Available Days</td>
                      <td> Available Timings</td>
                      <td> Email_id</td>
                      <td> Password</td>
                     
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
                                <td> <% out.print(rs.getString("DOB"));%></td>
                                <td> <% out.print(rs.getString("ADDRESS"));%></td>
                                <td> <% out.print(rs.getString("CITY"));%></td>
                                <td> <% out.print(rs.getString("STATE"));%></td>
                                <td> <% out.print(rs.getString("PHONE_NO"));%></td>
                                <td> <% out.print(rs.getString("QUALIFICATION"));%></td>
                                <td> <% out.print(rs.getString("DEPARTMENT"));%></td>
                                <td> <% out.print(rs.getString("AVAILABLE_DAYS"));%></td>
                                <td> <% out.print(rs.getString("AVAILABLE_TIMINGS"));%></td>
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
