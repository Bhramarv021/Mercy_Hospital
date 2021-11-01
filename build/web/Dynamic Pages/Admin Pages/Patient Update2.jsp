
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Search Page</title>
    </head>
    <body>
        <%
        try
            {
                String P_email = request.getParameter("Email");
                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
                
                
                PreparedStatement st=cn.prepareStatement("select * from PATIIENT_DETAILS where EMAIL_ID = ?");
                st.setString(1,P_email);
                ResultSet rs = st.executeQuery();
       
          
            %>
            
           <table border="1">
                
               <tr>
           
                      <th> Gender</th>
                      <th> First_name</th>
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
                                      String ml = rs.getString(8);
                                      session.setAttribute("Eml", ml);
                                      //String D_Name = rs.getString(2);
            //String D_Email = rs.getString(8);
            //session.setAttribute("D_name",D_Name);
            //session.setAttribute("Eml",D_Email);
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
                            </tr>
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
                <form action="Patient Update3.jsp">
            <table>
             <!--   <tr>
                    <td>Select column </td>
                    <td>
                    <select name="Select_Column">
                    <option>GENDER</option>
                    <option>FIRST_NAME</option>
                    <option>LAST_NAME</option>
                    <option>ADDRESS</option>
                    <option>CITY</option>
                    <option>STATE</option>
                    <option>PHONE_NO</option>
                    <option>PASSWORD</option>
                    <option>DOB</option>
                    </select>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Enter OLD Value
                    </td>
                    <td>
                        <input type="text" name="old_value" value="Old Value">
                    </td>
                </tr>
               --> 
                <tr>
                    <td>Select column </td>
                    <td>
                    <select name="Update_Column">
                    <option>GENDER</option>
                    <option>FIRST_NAME</option>
                    <option>LAST_NAME</option>
                    <option>ADDRESS</option>
                    <option>CITY</option>
                    <option>STATE</option>
                    <option>PHONE_NO</option>
                    <option>PASSWORD</option>
                    <option>DOB</option>
                    </select>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Enter NEW Value
                    </td>
                    <td>
                        <input type="text" name="new_value" value="Updated Value">
                    </td>
                    <td>
                        <input type="submit" name="submit" value="Update">
                    </td>
            </table>
        </form>
      
    
    </body>
</html>
