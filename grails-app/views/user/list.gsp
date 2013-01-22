
<%@ page import="org.egi.pet.gviplasha.User" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-user" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nick" title="${message(code: 'user.nick.label', default: 'Nick')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="surname" title="${message(code: 'user.surname.label', default: 'Surname')}" />
			
				<g:sortableColumn property="details" title="${message(code: 'user.details.label', default: 'Details')}" />
			
				<g:sortableColumn property="createDate" title="${message(code: 'user.createDate.label', default: 'Create Date')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${userInstanceList}" status="i" var="userInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "nick")}</g:link></td>
			
				<td>${fieldValue(bean: userInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: userInstance, field: "surname")}</td>
			
				<td>${fieldValue(bean: userInstance, field: "details")}</td>
			
				<td><g:formatDate date="${userInstance.createDate}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${userInstanceTotal}" />
	</div>
</section>

</body>

</html>
