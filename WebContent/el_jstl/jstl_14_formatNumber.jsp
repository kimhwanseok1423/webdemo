<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_14_formatNumber</title>
</head>
<body>
<%-- 숫자형식을 지정해주는 formatNumber요소  --%>
<c:set var="num1" value="10000"/>
<c:set var="num2" value="0.2" />

<!--  type속성은 number,currency,percent을 사용할 수 있다. -->
<p>

<fmt:formatNumber value="${num1}" type="number"/>
</p>
<!--10,000  -->

<p>
<fmt:formatNumber value="${num1 }" type="currency"/>
</p> <!-- ₩10,000 -->
<p>
<fmt:formatNumber value="${num2 }" type="percent"/>
</p> <!--20%-->

<p>
<fmt:formatNumber value="${num1 }" type="number" pattern="0,000.00"/>
</p> <!-- 10,000.00 -->

<p>
<fmt:formatNumber value="${num1 }" currencySymbol="$" type="currency"/>
</p>
</body>
</html>