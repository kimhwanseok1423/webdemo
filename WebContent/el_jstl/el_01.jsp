<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>주석처리</h3>

<!--  html 주석 -->
<%-- jsp 주석 --%>

<%--
EL(expression language): 표현 언어
1. jsp스크립트로 대신해서 속성값을 편리하게 출력할 수 있도록 제공해주는 언어이다. 
2. ${}

--%>
<%
  // scope(영역) - 데이터를 참조할 수 있도록 제공해주는 공간
  // page-pageContext, request-request,session-session, application-application
  
  //page영역에 p1이름으로 page값이 저장된다.
  pageContext.setAttribute("p1","page"); //페이지 영역p1에 page라는값을 줌
  
  //request영역에 p2이름으로 request값이 저장된다면
  request.setAttribute("p2","request");//한번의 호출
  
  //session 영역에 p3이름으로 session값을 저장하겠다면
  session.setAttribute("p3","session"); //하나의 클라이언트
  
  //application영역에 p4이름으로 application값이 저장된다.
  application.setAttribute("p4","application"); //모든 클라이언트

 
%>
 <p>
 <%= pageContext.getAttribute("p1") %> / <%=request.getAttribute("p2") %>
 / <%= session.getAttribute("p3") %>  / <%= application.getAttribute("p4") %>
  </p>
</body>
</html>