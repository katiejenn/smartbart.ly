function clickHeart(station) 
{
	stationId = $(station).data()._id;
	//alert('clicked on ' + stationId + '!');
	// if ($el.hasClass("hearted")) {
	// 	deleteFavorite();
	// } else {
		//addFavorite(stationId);
		deleteFavorite(stationId)
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
	console.log(stationId, "station id")
	var foo = "/favorites/"+stationId
	console.log("foo: " + foo)
	$.ajax({
		url: foo,//"/favorites/"+ stationId,
		type: 'DELETE',
		success: function(res){
			alert("You just deleted station " + stationId + " from your favorites!");
		}
		// ,
		// error: function(res){
			
		// }
	});
}

