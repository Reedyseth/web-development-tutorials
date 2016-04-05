/**
 * Main script to handle the search by Ajax.
 * @author Reedyseth - reedyseth at gmail dot com
 * @date  02-Apr-2016
 * @since 160402
 */
jQuery(document).ready(function($) { // Let us wait until the DOM is loaded.
    // This is the code to search by name
    // Since .click() will call eventually the on() method let us use it instead.
	$( '.btnSearchByName' ).on( 'click', function(){
        if ( ! validateData( $( 'input#name' ).val() ) ) 
        {
            showErrorPanel("You need to fill the data in order to get results!");
            return false;
        }
		makeAjaxRequest( "name" );
	});

    $('.form1').on( 'submit', function( e ){
        e.preventDefault();

        if ( ! validateData( $( 'input#name' ).val() ) ) 
        {
            showErrorPanel( "You need to fill the data in order to get results!" );
            return false;
        }
        validateData();
        makeAjaxRequest( "name" );        
    });
    // end code to search by name
    // This is the code to search by Id
    $('.btnSearchById').on( 'click', function(){
        if ( ! validateData( $( 'input#id' ).val() ) ) {
            showErrorPanel( "You need to fill the data in order to get results!" );
            return false;
        }
        makeAjaxRequest( "id" );
    });

    $('.form2').submit(function( e ){
        e.preventDefault();
        if ( ! validateData( $( 'input#id' ).val() ) ) {
            showErrorPanel( "You need to fill the data in order to get results!" );
            return false;
        }
        validateData();
        makeAjaxRequest( "id" );
        return false;
    });
    // end code to search by id


    function makeAjaxRequest( type ) {
        if (type == "name") {
            $.ajax({url: 'php/search.php',
                type: 'get',
                data: {name: $('input#name').val()},
                success: function(response) {
                    $('table#resultTable tbody').html( response );
                }
            });
        } else if (type == "id") {
            $.ajax({url: 'php/searchById.php',
                type: 'get',
                data: { id: $( 'input#id' ).val() },
                success: function(response) {
                    $('table#resultTable tbody').html( response );
                }
            });
        }
    }
    function validateData(data) {
        if (data === "") {
            return false;
        } else {
            return true;
        }
    }

    function showErrorPanel( msg ) {
        $('.notificationPanel div:eq(1)').text( msg ).wrap("<strong></strong>");
        $('.notificationPanel').stop().slideDown('normal');
        setTimeout(function() {
            $('.notificationPanel').stop().slideUp('normal');
        }, 3500);
    }
});