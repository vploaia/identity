<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@include file="header.jsp"%>
	<center>
		<s:if test="profileSearchList.size() > 0">
			<!-- listProfile  -->
			<center>
				<br> <br> <br> <br>
				<table border="1px" cellpadding="8px" width=50%>
					<tr>
						<td colspan="6"><center>Profiles</center></td>
					</tr>
					<s:iterator value="profileSearchList">


						<td align="left"><s:if test="%{profile.idProfile==null}">
								<left> 
								   <img class="example" height="50" width="50" src="images/holder.png"> 
								</left>
							</s:if> <s:else>
								<left> 
								   <img height="50" width="50" src="<s:url  action="imageAction" >
									<s:param name="userProfileId" value="%{profile.idProfile}"/></s:url>" />
								</left>
								
							</s:else> 
							<s:property value="firstName" /> 
							<s:property value="lastName" />
							<s:submit value="Add Friend" action="addFriend" />
						</td>



					</s:iterator>
				</table>
			</center>
		</s:if>
	</center>
</body>
</html>