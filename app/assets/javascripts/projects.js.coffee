

jQuery.fn.clickCancelButton = ->
    @find('#cancel_button').click ->
        $('#new_project').remove()
        $('#new_link').show()
