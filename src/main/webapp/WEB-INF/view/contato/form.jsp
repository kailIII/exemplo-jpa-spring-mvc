<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form</title>
<link href="<c:url value="/webjars/bootstrap/3.1.1/css/bootstrap.min.css" />" rel="stylesheet"/>
</head>
<body>
	<div class="container">
		<h1>Contato</h1>
		<form id="contato">
			<label>Nome: <input type="text" name="nome"/></label>
			<label>Fone: <input type="text" name="fone"/></label>
			<label><input type="submit" /></label>
		</form>
	</div>
	<script src="<c:url value="/webjars/jquery/2.1.0/jquery.min.js" />"></script>
	<script src="<c:url value="/webjars/bootstrap/3.1.1/js/bootstrap.min.js" />"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#contato').submit(function(e) {
			e.preventDefault();
			console.log("teste");
			$.ajax({
	            url: "processa",
	            type: "POST",
	            dataType: "JSON",
	            success: function (data) {
	                $("#nome").text(data.nome);
	                $("#fone").text(data.fone);
	                $("#email").text(data.email);
            	}
	        });
		});
	});
	</script>
	
</body>
</html>