<%-- 
    Document   : HairdresserLanding
    Created on : Mar 15, 2021, 8:16:46 PM
    Author     : Jean
--%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BO.HayrDresser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BO.HayrDresser" %>
<!DOCTYPE html>
<html>
    <head>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Copperplate, Papyrus, fantasy;
background-image: url("https://images.squarespace-cdn.com/content/v1/5ab12482cc8fed2171d349a5/1560266303815-SPPMS02LTU54BLWD9PX5/ke17ZwdGBToddI8pDm48kG87Sfbgg29A4BYEDq3OXvgUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcf4OxbJOyh_wHUnyc4kQLQ6SBshRGOku7c30Y_IRDNPta8R2IY5BHMaEj1zOWoDTZ/photo-1527904219733-fddc74937915.jpeg?format=1500w");
background-repeat: no-repeat;
background-position: center;
background-size: cover;
background-blend-mode: screen;
}
img{border-radius: 50%;}
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
button:hover{
  opacity: 0.8;
}
.container {
  padding: 16px;
}
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
img.avatar {
  width: 40%;
  border-radius: 50%;
}
h1 {
    text-align:center;
}
h2 {text-align: center;}
span.psw {
  float: right;
  padding-top: 16px;
}
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
    
    <body>
        <h1>Welcome to the Display Page</h1>
        <h2>Display Appointments</h2>
        <button type="submit">Display Appointments</button>
        <h2>Display Customers</h2>
        <button type="submit">Display Customers</button>
        <h2>Display Customer's Appointments</h2>
        <button type="submit">Display Customer's Appointments</button>
        <form action= "">
            
        <%//hair dresser code for availability************************
            HayrDresser hd1 = new HayrDresser();
            HayrDresser k2;
            ArrayList<HayrDresser> bList = new ArrayList<HayrDresser>();
            k2 = (HayrDresser) session.getAttribute("L1");
            
            bList = hd1.getAllHayrDressers();
               if (k2!=null){
               //out.println(k2.getHairDresserId());
               //out.println("Test");
               //bList.add(k2);
               }               
                int listSize = HayrDresser.getCount();
                out.println(listSize);
                HayrDresser[] b = new HayrDresser[listSize];
                
                for (int count=0;count<listSize;count++){
                    b[count] = bList.get(count);
                    //out.println(b[count].getHairDresserFname());
                }//end hairdresser******************************
        %>
      
            
            <%  session = request.getSession();
            HayrDresser h1 = (HayrDresser)(session.getAttribute("Hairdresser"));
            %>
        
    <div class="container">

    </div>

    </form>
        
        
    </body>
</html>