$(document).ready(function() {
	$("#search").on("click", function() {
		var band = $("#band").val();
		var custom_url = "https://api.spotify.com/v1/search?type=artist&query="+band;
		$.ajax({
			type: "GET",
			url: custom_url,
			data: "",
			success: function(response){showArtist(response)},
			error: function(){console.log("MEH.Error.")},
			dataType: "json"
		});
	});

	function showArtist(element) {
		var list = element.artists;
		var item = list.items[0];
		var image = item.images[0];
		var url_image = image.url;

		$("#result").append("<img src='"+url_image+"'>");
	}
});
