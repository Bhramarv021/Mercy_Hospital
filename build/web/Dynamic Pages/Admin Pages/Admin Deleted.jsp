
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>After Deletion</title>
       <style>
             *{
    margin : 10px;
    padding : 10px;
    font-size: 1em;
    background-color:#66ffcc;
    text-align: center;
}
            #home{
        position: absolute;
        right:42%;
        top:60px;
        background-color: white;
}
        </style>
 
    </head>
    <body>
        <%
            String PD = (String) session.getAttribute("P_eml_delete");
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
                PreparedStatement st = cn.prepareStatement("Delete from Admin_DETAILS where EMAIL_ID = ?");
                st.setString(1,PD);
                int ss = st.executeUpdate();
            out.print("Data Deleted For Patient Whose Email is : ");
            out.print(PD);
            }
            
            catch(Exception ex){    out.print(ex);  } %>
        <div id="home">
                <button> <a href="../../index.html"> Back To Home  </a> </button>
            </div>
 
    </body>
</html>
