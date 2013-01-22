<%@ page import="org.egi.pet.gviplasha.User" %>



			<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'nick', 'error')} required">
				<label for="nick" class="control-label"><g:message code="user.nick.label" default="Nick" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nick" required="" value="${userInstance?.nick}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'nick', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="user.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${userInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'surname', 'error')} required">
				<label for="surname" class="control-label"><g:message code="user.surname.label" default="Surname" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="surname" required="" value="${userInstance?.surname}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'surname', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'details', 'error')} ">
				<label for="details" class="control-label"><g:message code="user.details.label" default="Details" /></label>
				<div class="controls">
					<g:textField name="details" maxlength="100" value="${userInstance?.details}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'details', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'createDate', 'error')} required">
				<label for="createDate" class="control-label"><g:message code="user.createDate.label" default="Create Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="createDate" precision="day"  value="${userInstance?.createDate}"  />
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'createDate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: userInstance, field: 'tags', 'error')} ">
				<label for="tags" class="control-label"><g:message code="user.tags.label" default="Tags" /></label>
				<div class="controls">
					<g:select name="tags" from="${org.egi.pet.gviplasha.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.tags*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'tags', 'error')}</span>
				</div>
			</div>

