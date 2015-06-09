 $(document).ready(function(){
 	//btn-search
 	$('#btn-search').on("click", function(){
 		var artist = $('#search-term').val();
 		var custom_url = "https://api.spotify.com/v1/search?type=artist&query="+artist;
 		$.ajax({
 			type: "GET",
 			url: custom_url,
 			data: "",
 			success: function(response){show_artist(response)},
 			error: function(){console.log("ERROR")},
 			dataType: "json"
 		});
 	});

 	function show_artist(element) {
 		var list = element.artists;
 		var item = list.items[2];
 		var image = item.images[0];
 		var url_image = image.url;

 		$('#content').append( "<img src='"+url_image+"'>");
 	}
 });