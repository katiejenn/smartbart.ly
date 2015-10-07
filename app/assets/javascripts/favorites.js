function clickHeart(station) 
{
	stationId = $(station).data()._id;
	//alert('clicked on ' + stationId + '!');
	// if ($el.hasClass("hearted")) {
	// 	deleteFavorite();
	// } else {
		addFavorite(stationId);
	// }
}
function addFavorite(stationId) 
{
	console.log("you are adding a new favorite station!");
	$.post("/favorites/new/" + stationId, function(){
		alert("You just added station " + stationId + " to your favorites!");
	});
}

function deleteFavorite(stationId) 
{
	// $.ajax({
	// 	url: '/list/' + taskId,
	// 	type: 'DELETE',
	// 	success: function(res){
	// 		//once successful, re-render all tasks
	// 		getTasks();
	// 	},
	// 	error: function(res){
	// 		getTasks();
	// 	}
	// });
}

