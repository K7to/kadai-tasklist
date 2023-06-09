<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url= "../template/temp.jsp">
    <c:param name = "header">
        <h2>タスク一覧</h2>
    </c:param>
    <c:param name = "content">
        <table border = "1">
            <tr>
                <th>id</th>
                <th>タスク名</th>
                <th>追加日</th>
                <th>締め切り</th>
            </tr>
            <c:forEach var = "task" items = "${tasks}">
                <tr>
                    <th>
                        <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                            <c:out value="${task.id}"></c:out>
                        </a>
                    </th>
                    <th><c:out value = "${task.taskName}"></c:out></th>
                    <th><c:out value = "${task.addedDay}"></c:out></th>
                    <th><c:out value = "${task.update}"></c:out></th>
                </tr>
            </c:forEach>
        </table>
        <br>
        <p><a href="${pageContext.request.contextPath}/new">タスク新規作成</a></p>
    </c:param>
</c:import>
