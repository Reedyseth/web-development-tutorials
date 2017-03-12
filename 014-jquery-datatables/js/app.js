/*
	Script to handle the Datatables Plugin.
	@author Reedyseth
	@since 10-Nov-2015
	@version 1.0.0
*/
$(document).ready(function() {
	$.ajax({
		url: "php/retrieveEmployees.php",
		dataType: "json",
		success: function( response ){
			var tbody = "";
			for (var i = 0; i < response.length - 1; i++) {
				tbody += "<tr>" +
							"<td><a href='#'>"+ response[i].employee_id +"</a></td>"+
							"<td>"+ response[i].name +"</td>"+
							"<td>"+ response[i].email +"</td>"+
							"<td>"+ response[i].telephone +"</td>"+
						 "</tr>";
			};
			$('#resultTable tbody').html( tbody );
			$('#resultTable').DataTable({
				sDom: '<"top"lf>rt<"bottom"i><"floatRight"p>'
			});
		},
		error: function(jqXHR){
			console.debug(jqXHR);
		}
	});
});