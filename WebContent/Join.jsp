<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="src.controller.LoginServlet"%>
<%@page import="src.dao.*"%>
<jsp:useBean id="bean" class="src.model.ModelMVC"/>
<jsp:setProperty property="*" name="bean"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="root" var="conn"/>
	<% out.println(bean.getUname());%>
</body>
</html>