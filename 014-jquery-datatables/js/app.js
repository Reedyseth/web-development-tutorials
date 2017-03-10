/*
	Script to handle the Datatables Plugin.
	@author Reedyseth
	@since 10-Nov-2015
*/
$(document).ready(function() { // We execute our code after the DOM is ready
	// Perfoming an Ajax request to retrieve the records
	$.ajax({
		url: "php/retrieveEmployees.php",
		dataType: "json", // I am specifying the response type.
		success: function( response ){ // response is what the server return
			var tbody = "";
			// The records are return as a JSON so we iterate through the array and create the table row (tr)
			for (var i = 0; i < response.length - 1; i++) {
				tbody += "<tr>" +
							"<td><a href='#'>"+ response[i].employee_id +"</a></td>"+
							"<td>"+ response[i].name +"</td>"+
							"<td>"+ response[i].email +"</td>"+
							"<td>"+ response[i].telephone +"</td>"+
						 "</tr>";
			};
			// After the tbody is created we add it to the table
			$('#resultTable tbody').html( tbody );
			// Initialize the jQuery DataTable plugin into the given selector.
			$('#resultTable').DataTable();
		},
		error: function(jqXHR){
			// Just for debuggin purposes
			console.debug(jqXHR);
		}
	});
});