
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="java.io.BufferedReader"%>

<%@page import="java.io.FileReader"%>

<%@page import="java.io.IOException"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>news</title>

</head>

<Style>

    #dva{text-align:center; 

         vertical-align:middle; 

         background-color:darkgrey; 

         border:1px solid darkgrey;

         float:none; 

         font-size:1em}

    #dvb{text-align:center; 

        vertical-align:middle;

        background-color:white; 

        border:1px solid darkgrey;

        width: 90%;

        float:left;

        font-size:0.7em}

    #dvc{text-align:center;

        vertical-align:middle; 

        background-color:white;

        width:80%;

        height:60px;

        float:left;}

    #dvd{text-align:center; 

        vertical-align:middle; 

        background-color:white; 

        border:1px solid darkgrey;

        float:right; 

        font-size:0.5em}

    #dve{text-align:center;

        vertical-align:middle;

        width:9%;

        height: 60px;

        border:1px solid darkgrey;

        background-color:white;

        float:left}

    a{text-decoration: none;}

</Style>

<body>

	<% 

	String[] news1 = new String[50];
	
   	 BufferedReader br = null;

     	   try{

       		 	String[] news = new String[50];

        		int i = 0;

                br = new BufferedReader(new FileReader("C:/Users/USER/text/Input2.txt"));

                String line = ""; //ab

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

        }    

        %>

	<div id="dva">

        <h1>정치</h1>

    </div>

    <div id="dvd">

        <h1>확인</h1>

    </div>

    <div id="dvd">

        <h1>새로고침</h1>

    </div>

    <div id="dvc">

        <h1> </h1>

    </div>

    <div id="dvb"  onclick="location.href='NewFile2.jsp?num=0';">

       <h1><%= news1[0]    %></h1>

    </div> 

    <div id="dve"></div>

    <div id="dvb" onclick="location.href='NewFile2.jsp?num=1';">

        <h1><%= news1[1]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=2';">

        <h1><%= news1[2]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=3';">

        <h1><%= news1[3]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=4';">

        <h1><%= news1[4]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=5';">

        <h1><%= news1[5]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=6'';">

        <h1><%= news1[6]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=7';">

        <h1><%= news1[7]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=8';">

        <h1><%= news1[8]    %></h1>

     </div> 

     <div id="dve"></div>

     <div id="dvb" onclick="location.href='NewFile2.jsp?num=9';">

        <h1><%= news1[9]    %></h1>

     </div> 

     <div id="dve"></div>

</body>
</html>