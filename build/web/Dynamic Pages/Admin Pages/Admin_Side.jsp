
<html>
    <head>
        <title>In Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>   
*{
    margin : 10px;
    padding : 45px;
    font-size: 1em;
    background-color: orange;
}

#user{
    position: absolute;
    top:10px;
    right:400px;
    font-size: 2em;
    font-family: cursive;
    font-style: italic;
    color:yellow;
}

#Patient_data{
    position: absolute;
    top:50px;
}

#Doctor_data{
    position: absolute;
    top:250px;
}

#Admin_data{
    position: absolute;   
    top: 450px;
}

#Admin_Loggout{
        position: absolute;
        top:150px;
        right:100px;
}

#Home{
        position: absolute;
        right:100px;
        top:350px;
}
            
</style>
    </head>
    <body>
        <div id="user">
        <%
            try
            {
               String user = (String)session.getAttribute("id");
               String name = (String) session.getAttribute("A_Name"); 
               out.print("WELCOME "+name);
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
         %>
         </div>
        <div id="In_Admin">
            
        <div id="Patient_data">
            
            <button> <a href="../Patient Pages/Patient_info.html"> Patient Info </a> </button>
            
        </div>
        <div id="Doctor_data">
            
            <button> <a href="../Doctor Pages/Doctor_info.html"> Doctor Info </a> </button>
            
        </div>
        <div id="Admin_data">
            <button> <a href="../Admin Pages/Admin_info.html"> Admin Info </a> </button>
        </div>
            
        <div id="Admin_Loggout">
            <button> <a href="../Admin Pages/Admin Loggout.jsp"> Admin Loggout  </a> </button>
        </div>
        
            <div id="home">
                <button> <a href="../../index.html"> Back To Home  </a> </button>
            </div>
            
        </div>
    </body>
</html>
