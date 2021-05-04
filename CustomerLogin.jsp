<!DOCTYPE html>
<html>
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

<h1>Welcome to THS Hair Salon</h1>
<h2>Please Login</h2>

<form action= "CustomerServlet">
    
  <div class="imgcontainer">
    <img src="https://cdn.discordapp.com/attachments/692467198655987833/804975854101725224/Picture1-removebg-preview.png" alt="Avatar" width="247" height="300">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
      <br> <br>
      <label>Don't have an account yet?  <a href="SignUpPage.jsp">Sign Up</a></label>
    
    </label>
  </div>

  <div class="container">
    <input class="cancelbtn" type="button" onclick="javascript:window.location('HomePage.jsp')" value="Cancel" />
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>
</html>