# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@addField = (event) ->   
  element = event.target
  time = new Date().getTime()
  regexp = new RegExp(element.id, 'g')
  #formContainer is the div element where fields can be added and removed
  formContainer = element.parentNode.parentNode.querySelector('.dynamic-list-content');
  formContainer.insertAdjacentHTML('beforeend', element.dataset['fields'].replace(regexp, time))
  event.preventDefault()

@removeField = (event) ->
  element = event.target
  #formContainer is the div element where fields can be added and removed
  formContainer = element.parentNode.parentNode.querySelector('.dynamic-list-content')
  formContainerFields = formContainer.querySelectorAll('div .dynamic-list-element')
  #if there is only one element in formContainer then we can't remove it
  if(formContainerFields.length > 1)
    #check if form is displayed in new or edit mode to take care of database deletion in the latter case
    lastFormField = formContainerFields[formContainerFields.length-1]
    destroyHiddenField = lastFormField.querySelector("input[type=hidden]:last-of-type")
    if(lastFormField.contains(destroyHiddenField))
      destroyHiddenField.value = "1"
      formContainer.insertBefore(destroyHiddenField, lastFormField)
    formContainer.removeChild(lastFormField)
  event.preventDefault()