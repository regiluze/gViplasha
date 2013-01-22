
<%@ page import="org.egi.pet.gviplasha.User" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-user" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.nick.label" default="Nick" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "nick")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.surname.label" default="Surname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "surname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.details.label" default="Details" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userInstance, field: "details")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.createDate.label" default="Create Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${userInstance?.createDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="user.tags.label" default="Tags" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${userInstance.tags}" var="t">
						<li><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
