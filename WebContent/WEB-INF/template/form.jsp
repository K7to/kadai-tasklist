<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<label for = "name">タスク名</label><br>
<input type = "text" name = "name" id = "name" value = "${task.taskName}"/>
<br><label for = "det">タスク詳細</label><br>
<input type = "text" name = "detail" id = "det" value = "${task.taskDetail}"/>
<br><label for = "deadY">締め切り日</label>
<input type = "text" name = "deadlineY" id = "deadY" value = ""/>年
<label for = "deadM"></label>
<input type = "text" name = "deadlineM" id = "deadM" value = ""/>月
<label for = "deadD"></label>
<input type = "text" name = "deadlineD" id = "deadD" value = ""/>日
<br>
<input type="hidden" name="_token" value="${_token}" />
<button type = "submit">送信</button>
