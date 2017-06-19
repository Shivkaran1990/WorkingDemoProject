package com.test;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

@Path("/customers")
public class HelloWorldService {

  @GET
  @Produces("text/html")
  public Response getLocalCust() {

           String output = "I am from 'getLocalCust' method";
           return Response.status(200).entity(output).build();
  }

  @GET
  @Path("/karan")
  @Produces("text/html")
  public Response getNriCust() {

            String output = "I am from karan method\n Name : Shivkaran Ravidas";
            StringBuffer bb=new StringBuffer();
            bb.append("Name : "+"Shivkaran"+"\n");
            bb.append("Surname : "+"Ravidas"+"\n");
            bb.append("City : "+"Mandsuar"+"\n");
            bb.append("Mobile Number : "+"9860214064"+"\n");
            bb.toString();
            return Response.status(200).entity(output).build();
  }
}