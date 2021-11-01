
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Details</title>
        <style>
        *{
    margin : 10px;
    padding : 10px;
    background-color:#66ffcc;
    text-align: center;
}
#home{
        position: absolute;
        right:42%;
        top:70%;
        background-color: blue;
}
        </style>
    </head>
    
    <body>
        
         <div id="home">
                <button> <a href="../../index.html"> Back To Home  </a> </button>
            </div>
          <%
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
     
                PreparedStatement st=cn.prepareStatement("select * from APPOINTMENT");
                ResultSet rs = st.executeQuery();
            %> 
            <h1> APPOINTMENT DETAILS </h1>
           <table border="1">
                
               <tr>
           
                      <td> Email_id</td>
                      <td> Department</td>
                      <td> Appointment Date</td>
                      <td> Appointment Time</td>
                     
                </tr>
               
                <%
                    int x=1;
                    while(rs.next())
                        {
                            %>
                            <tr>
                                
                                <td> <% out.print(rs.getString("EMAIL"));%></td>
                                <td> <% out.print(rs.getString("DEPARTMENT"));%></td>
                                <td> <% out.print(rs.getString("DATE"));%></td>
                                <td> <% out.print(rs.getString("TIME"));%></td>
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
