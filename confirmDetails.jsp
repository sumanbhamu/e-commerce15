<%-- 

<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form commandName="us">
				<form:label path="username"> User Name:</form:label>${us.username}
					<br />
				<br />
				<form:label path="password">Password :</form:label>${us.password}
					<br />


				<form:label path="mail">Email:</form:label>${us.emailid}
</form:form> --%>

<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="content">
		<fieldset>
			<legend>Confirm Details</legend><center>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				 <!-- the "us" is same as in register commandName -->
			<a href="${flowExecutionUrl}&_eventId_index">Home</a><br /> <br />
			<form:form modelAttribute="us">
				<form:label path="username">User Name:</form:label>${us.username}
					<br />
				<br />
				<form:label path="password">Password :</form:label>${us.password}
					<br />


				<form:label path="emailid">Email:</form:label>${us.emailid}
					<br />
				<br />
				<form:label path="phno">Mobile #:</form:label>${us.phno}
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form></center>
		</fieldset>
	</div>

<%@ include file="footer.jsp" %>
