
<html>
    <head>
        <title>TODO supply a title</title>
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
                 right:200px;
                 font-size: 2em;
                 font-family: cursive;
                 font-style: italic;
             }
             #View_Profile{
                 position: absolute;
                 top:80px;
                 
             }
           
             #Update_profile{
                 position: absolute;
                 top:260px;
                 left:400px;
                 
             }
             
             #View_Appointment{
                 position: absolute;
                 top:450px;
                 left:700px;
                 
             }
             
             #Loggout{
                 position: absolute;
                 top:100px;
                 right:100px;
             }
            
             #Home{
                 position: absolute;
                 top:270px;
                 right:60px;
                 
             }
             
        </style>
    </head>
    <body>
        <div id="user"> 
        <%
            try
            {
               String user = (String)session.getAttribute("D_name");
               out.print("WELCOME Dr. "+user);
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
         %>
         
        </div>
    
        <div id="View_Profile">
            
            <button> <a href="View Details.jsp"> View Profile </a> </button>
            
        </div>
        <div id="Update_Profile">
            
            <button> <a href=""> Update Profile </a> </button>
            
        </div>
        <div id="View_Appointment">
            
            <button> <a href=""> View Appointment </a> </button>
            
        </div>
          <div id="Loggout">
            
            <button> <a href="Doctor_Loggout.jsp"> Logout </a> </button>
            
        </div>
         
        <div id="Home">
            
            <button> <a href="../../index.html"> HOMEPAGE </a> </button>
            
        </div> 
        
    </body>
</html>
