
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Name</title>
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
        <form action="../Patient Pages/Patient Search2.jsp">
            Enter Name <input type="text" name="Name" Placeholder="Search Patient">
            <input type="Submit" name="Submit" value="Search">
            <input type="Reset" name="reset" value="Cancel">
        </form>
        <button> <a href="../../index.html"> BACK TO HOMEPAGE </a> </button>
        <br>
        <br>
        <%
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
     
                PreparedStatement st=cn.prepareStatement("select * from PATIIENT_DETAILS");
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
                      <th> Email_id</th>
                      <th> Password</th>
                      <th> DOB</th>
                     
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
                                <td> <% out.print(rs.getString("EMAIL_ID"));%></td>
                                <td> <% out.print(rs.getString("PASSWORD"));%></td>
                                <td> <% out.print(rs.getString("DOB"));%></td>
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
