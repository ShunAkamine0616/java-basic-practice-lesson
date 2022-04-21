<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題1</title>
</head>
<body>

  <h1>Java基礎 - 演習問題1</h1>

  <p>
    <span>水の単価：100円</span>
    <br>
    <span>お茶の単価：150円</span>
    <br>
    <span>所持金：1000円</span>
  </p>

  <%
      /*
        ・printlnの()の中を必要に応じて修正してください。
        ・新たにprintlnを追加しないでください。
      */
      out.println("水とお茶を1個ずつ購入する場合の金額は、\"" + (100 + 150) + "円\"です");
      out.println("<br>");
      out.println("水とお茶を1個ずつ買った場合、所持金が\"" + (1000 - 250) + "円\"残ります");
      out.println("<br>");
      out.println("お茶を6個購入する場合の金額は、\"" + 150 * 6 + "円\"です");
      out.println("<br>");
      out.println("所持金で水を" + 1000 / 100 + "個購入できます");
      out.println("<br>");
      out.println("所持金でお茶を買えるだけ買った後は、\"" + (1000 % 150) + "円\"残ります");
  %>

</body>
</html>