<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e1_02_res.jsp</title>
</head>
<body>
<!--  data=홍길동&chk=서울&chk=부산-->

<% //scriptlet                  
String data=request.getParameter("data");  //하나의 값이 오는경우 getparameter
out.print("<p>" +data+"</p>");
%>

<p> <%=data%> </p>

<p> ${param.data} </p>
 
<%  //여러개의 값이 오는경우 여러개의chk 가 오는경우 getparametervalues
String[] chk=request.getParameterValues("chk");
if(chk!=null){
	for(String sn: chk)
		out.print("<p>" + sn + "</p>");
}
%>

<p>${paramValues.chk[0]}</p>
<p>${paramValues.chk[1]}</p>
<p>${paramValues.chk[2]}</p>
</body>
</html>