<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String ageStr = request.getParameter("age");
	String bloodType = request.getParameter("bloodType");
	int age;
	if(ageStr != "") {
		age = Integer.parseInt(ageStr);
	} else {
		age = 0;
	}
    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p>こんにちは、<%
    if (name == "") {
    	out.println("名無し");
    }else {
    	out.println(name); 
    }
    
    %>さん！<% if (name.equals("ロボット")) {
    	out.println("私と同じ名前ですね！");
    } %></p>
    <p><% if (age == 20) {
    	out.println("私と同い年なんですね！");
    } else if (age < 20) {
    	out.println("私よりも" + (20 - age) + "歳下ですね。");
    } else {
    	out.println("私よりも" + (age - 20) + "歳上ですね。");
    }
    %></p>
    <p>
    <%
    switch(bloodType) {
    
    case "typeA":
    	out.println("私もA型です！");
    	break;
    case "typeB":
    	out.println("B型の人と話すのは初めてです！");
    	break;
    case "typeO":
    	out.println("私の父がO型です");
    	break;
    case "typeAB":
    	out.println("私の母がAB型です。");
    	break;
    default:
    	out.println("血液型も教えてほしいです。");
    }
    	
    %>
    </p>
    
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>