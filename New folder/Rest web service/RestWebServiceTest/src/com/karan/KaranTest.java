package com.karan;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

@Path("/name")
public class KaranTest {
	
	  @GET
	  @Produces("text/html")
	  public Response getNriCust() {

	            String output = "I am from karan method\n Name : Shivkaran Ravidas ,Mobile Number: 98602014064";
	            return Response.status(200).entity(output).build();
	  }

}
