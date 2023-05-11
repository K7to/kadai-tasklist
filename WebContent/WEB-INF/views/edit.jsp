<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url = "../template/temp.jsp">
    <c:param name = "header">
        <h2>タスク編集画面</h2>
    </c:param>
    <c:param name = "content">
        <form method = "POST" action = "${pageContext.request.contextPath}/update">
            <c:import url = "../template/form.jsp"/>
        </form>

        <p><a href="#" onclick="confirmDestroy();">このメッセージを削除する</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("本当に削除してよろしいですか？")) {
                document.forms[1].submit();
            }
        }
        </script>
    </c:param>

</c:import>


