$(document).ready ->
  $('.arrow-switch').click ->
    source_currency = $('#source_currency').val()
    target_currency = $('#target_currency').val()

    $('#source_currency').val(target_currency)
    $('#target_currency').val(source_currency)
    $('form').submit()

  $('#quantity').keyup ->
    if $('#quatity').val().length > 0
      $('form').submit()

  $('#quantity').mouseup ->
    if $('#quatity').val().length > 0
      $('form').submit()

  $('form').submit ->
    if $('form').attr('action') == '/convert'
      $.ajax '/convert',
          type: 'GET'
          dataType: 'json'
          data: {
                  source_currency: $("#source_currency").val(),
                  target_currency: $("#target_currency").val(),
                  amount: $("#amount").val()
                },
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
            
        return false;
