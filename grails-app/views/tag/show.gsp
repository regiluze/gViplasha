
<%@ page import="org.egi.pet.gviplasha.Tag" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-tag" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="tag.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: tagInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="tag.users.label" default="Users" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${tagInstance.users}" var="u">
						<li><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
