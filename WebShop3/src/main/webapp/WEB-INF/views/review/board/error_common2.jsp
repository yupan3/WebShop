<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<html>hi ${exception}

<c:forEach items="${exception.getStackTrace() }" var="stack">
<li>${stack.toString() }</li>
</c:forEach>
</html>