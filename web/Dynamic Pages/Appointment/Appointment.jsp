<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

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
        String P_Dep = request.getParameter("Department");
        String P_Date = request.getParameter("Date");
        String P_Time = request.getParameter("Time");
        String str = (String) session.getAttribute("P_Email");
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
            PreparedStatement ps = con.prepareStatement("insert into APPOINTMENT (DEPARTMENT,DATE,TIME,EMAIL) values(?,?,?,?)");
            ps.setString(1,P_Dep);
            ps.setString(2,P_Date);
            ps.setString(3,P_Time);
            ps.setString(4,str);
            int rs = ps.executeUpdate();
            out.print("Your Appointment Is Approved");
        }
        catch(Exception ex)
        {
            out.print(ex);
        }
        %>
        
         <div id="home">
                <button> <a href="../../index.html"> Back To Homepage  </a> </button>
            </div>
        
    </body>
</html>
