<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
  .page-header{

  }
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    .row.content {
    height: 450px
    }
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }

    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Carrer</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a  id="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
             <button id="lgoogle" class=" btn btn-social btn-google"><span class="glyphicon glyphicon-off"></span> Login with Google+</button>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-left">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Cake</a></p>
      <p><a href="#">Donut</a></p>
      <p><a href="#">Pretzel</a></p>
      <p><a href="#">Pie</a></p>
      <p><a href="#">Bread</a></p>
      <p><a href="#">Coffee</a></p>
      <p><a href="#">Milk</a></p>
      <p><a href="#">Cookie</a></p>
    </div>

    <div class="col-sm-7 text-left">    
    <div class="page-header">
	       <h3>Select Product</h3>      
	 </div>
    <div class="col-sm-4">
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
        <div class="col-sm-4"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
      <div class="col-sm-4"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    
   <div class="col-sm-4">
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
        <div class="col-sm-4"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
      <div class="col-sm-4"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div> 
    
   
    </div>
    <div class="col-sm-3 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
         
        </div>
        <div class="modal-body" style="padding:40px 50px;">
        <%@ include file = "login.jsp" %>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel</button>
           
          <p>Not a member? <a id="signUp">Sign Up</a></p>
          <p>Forgot <a>Password?</a></p>
        </div>
      </div>
    </div>
  </div> 
  
  
  <div class="modal fade" id="signUpPopup" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Sign Up From </h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
        <%@ include file = "signUpPopup.jsp" %>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel</button>
                   
          <button type="button" id="createUser" class="btn btn-primary">Submit</button>
   
        </div>
      </div>
    </div>
  </div> 
  
  
  <div class="modal fade" id="googleDatapopup" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Google Plus Data</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
        <%@ include file = "GoogleData.jsp" %>
        </div>
        <div class="modal-footer">
          <span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
    </div>
  </div> 
 
 

<script>





$(document).ready(function(){
    $("#login").click(function(){
        $("#myModal").modal();
    });
    
    $("#signUp").click(function(){
    	$("#myModal").hide();
        $("#signUpPopup").modal();
    });
    
  
  
    $("#lgoogle").click(function(){	   
		var oauth_uri=" https://accounts.google.com/o/oauth2/auth?";
		var scopes="https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email";
		var client_id="518184818239-eujlqn2l4795cp26iacvlu0a9tp0t7gq.apps.googleusercontent.com";
		var redirect_uri="http://localhost:8000/BakaryShop/";
		var type="token";
		var url=oauth_uri + "scope=" + scopes + "&client_id=" + client_id + "&redirect_uri=" + redirect_uri +  "&response_type=" + type;
		var win=window.open(url,"window for Oauth Google","width=500,higth=500");
		
		var spam=window.setInterval(function()
			{
			var token_url=win.document.URL;
			if(token_url.indexOf(redirect_uri)!=-1)
			{
			window.clearInterval(spam);
			win.close();
			var start=token_url.indexOf("access_token=");
			var end=token_url.indexOf("&token_type");
			var token=token_url.substring(start + 13,end);
			validateToken(token);
			}
			},500);
    
       });  
    
		function validateToken(token)
		{
		$.ajax({
		url:'https://www.googleapis.com/oauth2/v1/tokeninfo?access_token='+token,
		data:null,
		success:function(result){
		getInformation(token);
		},
		dataType:'jsonp'
		});
		}
		
		function getInformation(token)
		{
		$.ajax({
		url:'https://www.googleapis.com/oauth2/v1/userinfo?access_token='+token,
		data:null,
		success:function(result){
		
		
		$('#userName').append(result.name);
		$('#email_id').append(result.email);
		$('#gender').append(result.gender);
		$('#link').append(result.link);
		$("#pic").attr("src",result.picture);
		$('#googleDatapopup').modal();
		
		},
		dataType:'jsonp'
		});
		}
    
    
    $("#createUser").click(function(){
    	var name=document.getElementById("name").value;
    	var email=document.getElementById("email").value;
    	//var sex=document.getElementById("demo").value;
    	var username=document.getElementById("username").value;
    	var password=document.getElementById("password").value;
    	var mobileNo=document.getElementById("mobilenumber").value;
    	var dob=document.getElementById("dob").value;
    	var address=document.getElementById("fulladdress").value;
    	var obj = new Object();
    	   obj.name = name;
    	   obj.email  = email;
    	   obj.sex = "M";
    	   obj.username = username;
    	   obj.password  = password;
    	   obj.mobilenumber =mobileNo;
    	   obj.dob = dob;
    	   obj.address  = address; 
    	   var jsonString= JSON.stringify(obj);
    	$.ajax({  
            type: 'POST',  
            dataType: 'json',  
            url: '/BakaryShop/createUser',  
            data: {customerInfo:jsonString},  
            success: function (Data) {  
                alert(data.name);  
            },  
            error: function (XMLHttpRequest, textStatus, errorThrown) {  
   
            }  
        });

    });
    
    
    
    
});
</script>


</body>
</html>
