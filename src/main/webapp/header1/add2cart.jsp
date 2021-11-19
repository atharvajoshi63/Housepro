<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%



 String a=request.getParameter("id1");
//List<String> names = new ArrayList<String>();
//names.add(a);

session.setAttribute("name",a);

%>
<jsp:forward page="tabs.jsp"></jsp:forward>
</body>
</html>