<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  useBean 액션으로 CalcBean 클래스 인스턴스 생성 -->
<jsp:useBean id = "calc" class="com.javalec.ex03.CalcBean"/>
<!--  setProperty 를 이용해 사용자 입력값을 자동으로 Calc Bean 클래스  -->
<jsp:setProperty name="calc" property="*" />
<!--  연산 수행 메서드 호출 -->
<% calc.calculate(); %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기</title>
</head>
<body>
	<h3>계산기</h3>
	<hr>
	<form name=form1 method=post>
		<input type="text" name="num1" width=200 size="5"> 
		<select name="operator">
			<option selected>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select> 
		<input type="text" name="num2" width=200 size="5"> 
		<input type="submit" value="계산" name="B1"> 
		<input type="reset" value="다시입력" name="B2">

	</form>
	<hr>
	<!--  calulate() 메서드 실행 결과 result 변수의 값을 가지고 와 출력함 -->
	계산 결과 :<jsp:getProperty name="calc" property="result" />

</body>
</html>