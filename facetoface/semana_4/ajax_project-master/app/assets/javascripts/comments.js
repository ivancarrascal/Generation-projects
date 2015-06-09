$(document).ready(function() {
	$('#reload-button').on("click", function() {
		$.ajax({
			type: "GET",
			url: "http://localhost:3000/comments",
			data: "",
			success: function(response){populate_ul(response)},
			error: function(){alert("Success: false");},
			dataType: "json"
		});
	});

	function populate_ul(items) {
		$("ul").empty();
		total_length = items.length
		for(var i = 0; i < total_length; i++) {
			$('ul').append("<li>"+ items[i].author + " says: " + items[i].text + "</li>");
		}
	}

	$('#commentButton').on("click", function() {
		reloadComment();
	});

	function reloadComment() {
		var authorName = $("#author").val
		var textComment = $("#text").val
		reloadComment = {
			author: authorName,
			text: textComment
		}
	$.ajax({
		type: "POST",
		url: "http://localhost:3000/comments",
		data: reloadComment,
		success: function(response){console.log("Succes: "+ response)},
		error: function(response){console.log("Succes: "+ response)},
		dataType: "json"
	});
	}
});
