Template.searchBox.rendered = () ->

	$("#searchBox").autocomplete(
    minLength: 0
		source: (request, response) ->
      arr = [
        {
          label: "this label"
          value: "this value"
          txt: "hellooooo"
        }
      ]
      response arr
  ).data("ui-autocomplete")._renderItem = (ul, item) ->
    return  $( "<li>" ).html("
    <a class='search-item-anchor' href='http://www.google.com'>
      <h4 class ='search-item-title' >Gold Ring<span>$ 39.65</span></h4>
    </a>
      ").appendTo( ul )

    #$("img").attr("src", "https://www.google.com/images/srpr/logo11w.png")
    #return  $( "<li>" ).append( $( "<a>" ).attr("href","http://www.google.com").append($("<img>").attr("src", "https://www.google.com/images/srpr/logo11w.png")) ).appendTo( ul )

    ###

    ###
