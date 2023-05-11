<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<label for = "name">タスク名</label><br>
<input type = "text" name = "name" id = "name" value = "${task.taskName}"/>
<br><label for = "det">タスク内容</label><br>
<input type = "text" name = "detail" id = "det" value = "${task.taskDetail}"/>
<br>
<input type="hidden" name="_token" value="${_token}" />
<button type = "submit">送信</button>
