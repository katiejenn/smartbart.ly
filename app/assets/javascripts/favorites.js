function clickHeart(station) 
{
	currentStation = $(station);
	stationId = currentStation.data()._id;
	//alert('clicked on ' + stationId + '!');
	// if (currentStation.hasClass('hearted')) 
	// {
		deleteFavorite(currentStation);
	// } 
	// else 
	// {
		// addFavorite(currentStation);
	// }
}
function addFavorite(station) 
{
	console.log("you are adding a new favorite station!");
	currentStation = $(station);
	stationId = currentStation.data()._id;
	currentStation.css('class', 'hearted');
	$.post("/favorites/new/" + stationId, function(){
		alert("You just added station " + stationId + " to your favorites!");
	});
}

function deleteFavorite(station) 
{	
	console.log("You are deleting a favorite station!");
	currentStation = $(station);
	stationId = currentStation.data()._id;
	currentStation.css('class', 'hearted');
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

