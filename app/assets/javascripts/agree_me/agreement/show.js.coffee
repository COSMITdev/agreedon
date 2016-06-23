AgreeMe.Agreement ?= {}

AgreeMe.Agreement.Show =
  init: ->
    $(document).on 'click', 'a', (e) ->
      if ($(this).attr('disabled') == 'disabled')
        e.preventDefault()

    $('#terms').change (e) ->
      if $(this).is(':checked')
        $('#printButton').attr("disabled", false)
      else
        $('#printButton').attr("disabled", true)

  modules: -> []
