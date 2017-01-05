# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  if !$('.student-index-wrap')[0]
    $.removeCookie('student_ids', { path: '/' })

  $('body').delegate '.selectAllTableLine', "click", (event)->
    checkboxs = $('table').find('input')
    key = $('#cookies_key').val()
    values = []
    if $.cookie(key) != null
      values = $.cookie(key).split(',')
      values = values.filter(String)

    if this.checked
      for ch in checkboxs
        if ! ch.disabled
          ch.checked = true
          if $(ch).val().match(/^\d+$/) and (values.indexOf($(ch).val()) == -1)
            values.push($(ch).val())
    else
      for ch in checkboxs
        if ! ch.disabled
          ch.checked = false
          if $(ch).val().match(/^\d+$/)
            values.splice(values.indexOf($(ch).val()), 1)
    $.cookie(key, values.join(','), { path: '/' })

  $('body').delegate '.selectCurrentLine', "click", (event)->
    element = $(this).find("input")
    key = $('#cookies_key').val()
    console.log('xx')
    if $.cookie(key) != null
      values = $.cookie(key).split(',')
      values = values.filter(String)
    else
      values = []
    if element[0].checked
      element[0].checked = false
      values.splice(values.indexOf(element.val()), 1)
    else
      element[0].checked = true
      values.push(element.val())
    $.cookie(key, values.join(','), { path: '/' })

  $('.student-index-wrap').delegate 'table tbody input', "click", (event)->
    false
