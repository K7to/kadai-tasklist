<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理アプリケーション</title>
    </head>
    <body>
        <h1>タスク管理アプリケーション</h1>
        <div id ="header">
            ${param.header}
        </div>
        <div id = "main">
            ${param.content}
        </div>

        <footer>Created by 012.2023導入</footer>
    </body>
</html>