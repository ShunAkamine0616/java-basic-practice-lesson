<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");
	String num1 = request.getParameter("num1");
	int num1_int = 0;
	try {
		if (!num1.isEmpty()) {
			num1_int = Integer.parseInt(num1);
		} 
	} catch(NullPointerException e) {
	
	}
	String num2 = request.getParameter("num2");
	int num2_int = 0;
	try {
		if (!num2.isEmpty()) {
			num2_int = Integer.parseInt(num2);
		} 
	} catch(NullPointerException e) {
		
	}
	String operator = request.getParameter("operator");
	int ans = 0;
	if(operator != null) {
		switch(operator) {
		case "add":
			ans = num1_int + num2_int;
			operator = " + ";
			break;
		case "sub":
			ans = num1_int - num2_int;
			operator = " - ";
			break;
		case "mul": 
			ans = num1_int * num2_int;
			operator = " * ";
			break;
		case "div":
			ans = num1_int / num2_int;
			operator = " / ";
			break;
		}
	}
    // 表示するメッセージ用の変数

    // メッセージ作成
    String msg;
    msg = "数値を入力してください";
    try {
	    if (num1.isEmpty() && num2.isEmpty()) {
	    	msg = "数値が両方とも未入力です";
	    } else if (num1.isEmpty() || num2.isEmpty()) {
	    	msg = "数値を入力してください";
	    } else if(num1 != null && num2 != null) {
	    	msg = num1 +  operator + num2 + " = " + (ans);
	    	if(operator == " / ") {
	    		msg = msg + " 余り" + (num1_int % num2_int);
	    	}
	    }
    } catch (NullPointerException e) {
    	
    }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
	<%out.println(msg); %>
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>