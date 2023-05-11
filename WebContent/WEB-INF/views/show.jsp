<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url = "../template/temp.jsp">
    <c:param name = "header">
        <h2>id : ${task.id} のメッセージ詳細ページ</h2>
    </c:param>
    <c:param name="content">
        <p>タイトル：<c:out value="${task.taskName}" /></p>
        <p>タスク詳細：<c:out value="${tack.taskDetail}" /></p>
        <p>作成日時：<fmt:formatDate value="${task.addedDay}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>締め切り日：<fmt:formatDate value="${task.deadLine}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このメッセージを編集する</a></p>
    </c:param>
</c:import>