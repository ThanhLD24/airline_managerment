<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<input type="text" value="<%=request.getParameter("to")%>">
	<input type="text" value="<%=request.getParameter("from")%>">
	<input type="text" value="<%=request.getParameter("dateto")%>">
	<input type="text" value="<%=request.getParameter("datefrom")%>"></br>
	<input type="text" value="<%=session.getAttribute("sto")%>">
	<input type="text" value="<%=session.getAttribute("sfrom")%>">
	<input type="text" value="<%=session.getAttribute("sdateto")%>">
	<input type="text" value="<%=session.getAttribute("sdatefrom")%>">
</body>
</html>