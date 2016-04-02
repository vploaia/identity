<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/comments.css" />
<link  type="text/javascript" href="js/scripts.js" />


<title>Identity</title>

</head>
<body>

	<%@include file="header.jsp"%>

	<br>
	<br>
	<br>

	<center>
		<form style="display: inline;">
			<div id="element1">
				<img class="example" src="images/menSmile.jpg">
			</div>
			<div id="element2">
				<p>
					<s:property value="#session['status']" />
				</p>
			</div>
		</form>
	</center>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>





	<center>
		<form style="background-color: #83c5c5; width: 30%;">
			<h1>
				<s:property value="#session['firstName']" />
				<s:property value="#session['lastName']" />
			</h1>
			<br> Email:
			<s:property value="#session['email']" />
			<br> Nascut:
			<s:date name="#session['dBirthday']" nice="true" />
			<br> Data nasterii:
			<s:date name="#session['dBirthday']" format="dd MMM yyyy" />
			<br> Locatie:
			<s:property value="#session['location']" />
			<br>
			<%--   Status: <s:property value="#session['status']" /> <br> --%>

			<%-- <input type="text" value="<%= session.getAttribute("picture") %>" /> --%>
		</form>
	</center>
	<br>


	<center>
		<s:if test="commentList.size() > 0">

			<table border="1px" cellpadding="8px">

				<tr>

					<td colspan="6"><center>Opinions</center></td>


				</tr>
				<s:iterator value="commentList">
					<tr>
						<td><s:date name="creationDate" format="dd/MM/yyyy"  /></td>
						<td><s:property value="message" /></td>

				   <td>
				   
				     <a href=<s:url action="rateUpAction">
						<s:param name="idMessUpDown" value="%{idMessage}" />
					 </s:url>>
						<img alt="Up" width="25px" height="25px" src=<s:url value="/images/up.png"/>>
				    </a>
				    <a href=<s:url action="rateDownAction">
						<s:param name="idMessUpDown" value="%{idMessage}" />
					</s:url>>
						<img alt="Down" width="25px" height="25px" src=<s:url value="/images/down.png"/>>
				   </a>
				   <td>
				   <s:property value="pozitiveRating" /> Up
				   </td>
				   <td>
				   <s:property value="negativeRating" /> Down
				   </td>
				   
				  </td>
				</tr>
				</s:iterator>
			</table>
		</s:if>
	</center>


	<br>
	<br>
	
	
	 

	<center>
		<h2>Comment</h2>
		<s:form>
			<s:textfield name="message" label="Comentariu" value="%{message}" />
			<s:if test="%{id==null}">
				<s:submit value="Create comment" action="addCommentAction" />
			</s:if>
			<%-- 	<s:else>
		<s:submit value="Update" action="updateUserAction"/>
	</s:else> --%>
		</s:form>
	</center>




	<br>
	<br>
	<br>


	<jsp:include page="footer.jsp" />

</body>
</html>