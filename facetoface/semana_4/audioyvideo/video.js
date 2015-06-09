$("#zalamero").click(function() {
	var vid = $("#perezReverte")[0];
	vid.currentTime = 43;
})

$("#reverte").click(function() {
	var vid = $("#perezReverte")[0];
	vid.currentTime = 217;
})

$("#restart").click(function() {
	var vid = $("#perezReverte")[0];
	vid.currentTime = 0;
})

$("#loop").select(function() {
	$("#perezReverte").setAttribute("loop", true);
})