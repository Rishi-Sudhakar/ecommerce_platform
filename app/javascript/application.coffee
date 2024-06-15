$ ->
  $('.add-to-cart').on 'click', (e) ->
    e.preventDefault()
    $target = $(e.target)
    $.post $target.data('url'), (response) ->
      $('#cart').html response
      # Add a success animation
      $target.addClass('btn-success').text('Added!').delay(2000).queue ->
        $(this).removeClass('btn-success').text('Add to Cart').dequeue()
