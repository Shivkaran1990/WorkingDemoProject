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
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a  id="accountname"/>
      <button id="lgoogle" class="btn btn-block btn-social btn-google" style="background: darkred;">Login with Google+</button>
      <button style="display: none;" id="logoutbutton"><span class="glyphicon  glyphicon-off"></span>  LOGOUT </button></li>

      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-left">    
  <div class="row content">
    <div class="col-sm-2 nav">
    </div>

    <div class="col-sm-7 text-left">    
    <div class="page-header">
	       <input type="text" class="form-control" id="usr" placeholder="Search Friend">
	       <button type="button" class="btn btn-primary" id="searchfriend">Submit</button>
	 </div>
    
     <div id="usercontainer">   
    </div>
   </div>    
	 
    
    </div>
     </div>
</div>


 
 
 
 

<script>
var token=null;
var contactList=null;
$(document).ready(function(){
    $("#login").click(function(){
        $("#myModal").modal();
    });
    
 
    $("#lgoogle").click(function(){	   
		var oauth_uri=" https://accounts.google.com/o/oauth2/auth?";
		var scopes="https://www.googleapis.com/auth/contacts https://www.googleapis.com/auth/contacts.readonly https://www.google.com/m8/feeds https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.circles.read";
		var client_id="518184818239-dgd4og7jf2fuc4tsubul0to3bqqd74oq.apps.googleusercontent.com";
		var redirect_uri="http://localhost:8080/BakaryShop";
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
			token=token_url.substring(start + 13,end);
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
		getContactsInformation(token);
		},
		dataType:'jsonp'
		});
		}
		
		
		function getContactsInformation(token)
		{
		$.ajax({
		url:'https://www.google.com/m8/feeds/contacts/default/full?alt=json&max-results=1000&access_token='+token,
		data:null,
		success:function(result){
		var data=result.feed.entry;
		contactList=data;
		   $( "#usercontainer" ).empty();
           for(var i in data)
			{				
               mapContactData(data[i]);
			}	
		},
		dataType:'jsonp'
		});
		
		$('#usercontainer').show();
		}
		
		
		
		function getConnectionInformation(token)
		{
		$.ajax({
		url:'https://people.googleapis.com/v1/people/me/connections?access_token='+token,
		data:null,
		success:function(result){
		var data=result.connections;
	           console.log("Testing aftrer");
	                    console.log(data);
           for(var i in data)
				{
				console.log(data[i].photos.url);
				console.log(data[i].names.displayName);
				}
			
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
		$('#lgoogle').hide();
		$('#logoutbutton').show();
			
		},
		dataType:'jsonp'
		});
		}
		
	$("#searchfriends").click(function(){
		var searchname = document.getElementById('usr').value;
		var restUri='https://www.googleapis.com/plus/v1/people?access_token='+token
        $.ajax({
		url:restUri,
		data:{query:searchname,key:100},
		success:function(response){
         mapSearchdataOnGUI(response);
		},
		dataType:'jsonp'
		});
    });
    
    function mapSearchdataOnGUI(response)
    {
    var data=response.items;
    $( "#usercontainer" ).empty();

      for(var i in data)
		{   
			var currentdiv= document.createElement("div");
			currentdiv.setAttribute("class","col-sm-4");
			currentdiv.setAttribute("style","height: 135px; border: 1px solid #a1a1a1;padding: 10px 43px;background: ghostwhite;width: 198px;border-radius: 37px");
			
			var imagechild = document.createElement("img");
			imagechild.setAttribute("style","height:100px;width:100px;");
			imagechild.setAttribute("src",data[i].image.url);
			
			var lb = document.createElement("span");
			lb.innerHTML = data[i].displayName;
			
			

			currentdiv.appendChild(imagechild);
			currentdiv.appendChild(lb);
			$('#usercontainer').append(currentdiv);
			     
		}
		$('#usercontainer').show();
   } 
    
    $("#searchfriend").click(function(){
		var searchkeyName = document.getElementById('usr').value;
        $( "#usercontainer" ).empty();
        for(var i in contactList )
        {
        var str=contactList[i].title.$t;
         if(str.includes(searchkeyName))
         {		
               mapContactData(contactList[i]);
		}
       }
          $('#usercontainer').show();
    });
    
    function mapContactData(contact)
    {
           var currentdiv= document.createElement("div");
			var br = document.createElement("br");
			currentdiv.setAttribute("class","col-sm-5");
			currentdiv.setAttribute("style","height: 135px;width: 245px;");

			var name = document.createElement("span");
			name.setAttribute("style","font-weight: bold;");
			name.innerHTML = contact.title.$t+"<br>";
			
			currentdiv.appendChild(name);

              if(contact.gd$phoneNumber!=null)
				{
				var phonenumber = document.createElement("span");
				phonenumber.setAttribute("style","color: blue;");
			    phonenumber.innerHTML = contact.gd$phoneNumber[0].$t+"<br>";
			    currentdiv.appendChild(phonenumber);
				}
				if(contact.gd$email!=null)
				{
						var email = document.createElement("span");
						email.setAttribute("style","color: blue;word-wrap: break-word;");
			            email.innerHTML = contact.gd$email[0].address+"<br>";
			            currentdiv.appendChild(email);
				}
		
			  $('#usercontainer').append(currentdiv);
    }

        
    
});
</script>


</body>
</html>
