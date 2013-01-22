<%@ page import="org.egi.pet.gviplasha.Tag" %>



			<div class="control-group fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="tag.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${tagInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: tagInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: tagInstance, field: 'users', 'error')} ">
				<label for="users" class="control-label"><g:message code="tag.users.label" default="Users" /></label>
				<div class="controls">
					
					<span class="help-inline">${hasErrors(bean: tagInstance, field: 'users', 'error')}</span>
				</div>
			</div>

