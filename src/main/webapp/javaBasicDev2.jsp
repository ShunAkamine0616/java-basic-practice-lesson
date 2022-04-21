<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    String[] month = {"1月", "2月", "3月"};
	String[] productClass = {"食品", "飲料"};
    String sumTitle = "合計";
    

    int[][] amount = {{352000, 442000, 520000}, {278000, 342600, 380500}};
    int[] sumMonthAmount = {amount[0][0] + amount[1][0], 
    		amount[0][1] + amount[1][1], amount[0][2] + amount[1][2]};
    int[] sumProductAmount = {amount[0][0] + amount[0][1] + amount[0][2], amount[1][0] + amount[1][1] + amount[1][2]};
    int total = sumProductAmount[0] + sumProductAmount[1];
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題2</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>

</head>
<body>
  <!-- 必要に応じて処理を変更してください  -->
  <h1>Java基礎 - 演習問題2(発展)</h1>
  <h2>売上一覧</h2>
  <table>
    <tr>
      <th></th>
      <th>1月</th>
      <th>2月</th>
      <th>3月</th>
      <th>合計</th>
    </tr>
    <tr>
      <td> <% out.println(productClass[0]); %></td>
      <td><% out.println(amount[0][0]);%></td>
      <td><% out.println(amount[0][1]);%></td>
      <td><% out.println(amount[0][2]);%></td>
      <td><% out.println(sumProductAmount[0]);%></td>
    </tr>
    <tr>
      <td> <% out.println(productClass[1]); %> </td>
      <td><% out.println(amount[1][0]);%></td>
      <td><% out.println(amount[1][1]);%></td>
      <td><% out.println(amount[1][2]);%></td>
      <td><% out.println(sumProductAmount[1]);%></td>
    </tr>
    <tr>
      <td> <% out.println(sumTitle); %></td>
      <td><% out.println(sumMonthAmount[0]);%></td>
      <td><% out.println(sumMonthAmount[1]);%></td>
      <td><% out.println(sumMonthAmount[2]);%></td>
      <td><% out.println(total);%></td>
    </tr>
  </table>
</body>
</html>