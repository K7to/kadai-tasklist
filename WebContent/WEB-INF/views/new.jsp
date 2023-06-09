<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../template/temp.jsp">
    <c:param name="header">
        <h2>タスク作成画面</h2>
    </c:param>
    <c:param name="content">
        <!-- _tokenも渡されているが処理することはなし -->
        <form method = "POST" action = "${pageContext.request.contextPath}/create">
            <c:import url = "../template/form.jsp"/>
        </form>
    </c:param>
</c:import>