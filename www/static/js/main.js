
$('#post-form').on('submit', function(event){
	event.preventDefault();
	console.log("form submitted!")
	create_post();
});

function create_post(){
	console.log("create post is workin");
	$(document).ready(function(){
		console.log($('#post-text').val());
	});
};
