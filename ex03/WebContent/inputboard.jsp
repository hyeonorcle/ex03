<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
    
<link rel="stylesheet" href="board.css">

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="board" class="board.boardBean">
	<jsp:setProperty name="board" property="*"/>
</jsp:useBean>

<% board.setReg_date(new Timestamp(System.currentTimeMillis())); %>
<h2 align="center">글쓰기</h2>
<br/>
	<table cellpadding=5 cellspacing=1 border="1" align="center" class="a">
		<tr >
		<td class="in">작성자</td>
		<td style="background-color:white">
		<jsp:getProperty name="board" property="name"/>
		</td>
		<td class="in">작성 일자</td>
		<td  style="background-color:white">
		<jsp:getProperty name="board" property="reg_date"/>
		</td>
		</tr>
		<tr height="20">
		<td class="in">제목</td>
		<td colspan="3"  style="background-color:white">
		<jsp:getProperty name="board" property="title"/>
		</td>
		</tr>
		<tr>
		<td colspan="4" style="text-align:center; background-color:white; height:300px">
		<jsp:getProperty name="board" property="text"/>
		</td>
		</tr>
	</table>
	



