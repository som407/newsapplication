<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="java.io.BufferedReader"%>

 

<%@page import="java.io.FileReader"%>

 

<%@page import="java.io.IOException"%>

<%@page import="java.lang.Integer" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>news</title>

</head>

 

 

<body>

	

	<% String[] news1 = new String[50];

	BufferedReader br = null;

	try{

       		 	String[] news = new String[50];

        		int i = 0;

                br = new BufferedReader(new FileReader("C:/Users/samsung/eclipse-workspace/Example/WebContent/WEB-INF/Input2.txt"));

                String line = "";

                while((line = br.readLine()) != null){

            	  news[i]=line;

            	  i++;

               }

              for (int j=0; j<=19; j++){

              	news1[j]=news[j];

              }

             

        } catch(Exception e){

        	  out.println(e.getMessage());

        } finally{

               if(br != null) try{br.close(); } catch(IOException e){}

        }   %>

        

        <% String[] news3 = new String[50];

	BufferedReader br1 = null;

	try{

       		 	String[] news2 = new String[50];

        		int i = 0;

                br1 = new BufferedReader(new FileReader("C:/Users/samsung/eclipse-workspace/Example/WebContent/WEB-INF/Input1.txt"));

                String line = "";

                while((line = br1.readLine()) != null){

            	  news2[i]=line;

            	  i++;

               }

              for (int j=0; j<=19; j++){

              	news3[j]=news2[j];

              	System.out.println(news3[j]+" "+ j);

              }

             

        } catch(Exception e){

        	  out.println(e.getMessage());

        } finally{

               if(br1 != null) try{br1.close(); } catch(IOException e){}

        }  

	

	String str_num=request.getParameter("num");

	int int_num=Integer.parseInt(str_num);

	%>

        

    	    <h1><%= news1[int_num] %></h1>

		<h1 style="font-size:20px;">

		<%= news3[int_num] %></h1>

	

</body>

</html>