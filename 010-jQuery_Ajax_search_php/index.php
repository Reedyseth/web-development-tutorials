<?php
/**
*	@author 	Ing. Israel Barragan C.  Email: ibarragan at behstant dot com
*	@since 		07-Nov-2013
*	##########################################################################################
*	Comments:
*	This file is to show how to extract records from a database with PDO
*	The records are shown in a HTML table and the employee Id has link with his Id.
*
*	Requires:
*	Connection.simple.php, get this file here: http://behstant.com/blog/?p=413
*   search.php located on the php folder.
*   Boostrap and jQuery.
*
* 	LICENCE:
*	You can use this code to any of your projects as long as you mention where you
* 	downloaded it and the author which is me :) Happy Code.
*
* 	LICENCIA:
*	Puedes usar este código para tus proyectos, pero siempre tomando en cuenta que
* 	debes de poner de donde lo descargaste y el autor que soy yo :) Feliz Codificación.
*	##########################################################################################
*	@version
*	##########################################################################################
*	1.0	    |	11-Nov-2013	|	Creation of new file to integrate the user ID on the query string.
*   1407707 |   07-Jun-2014 |   Add search by Id. Add user interface interaction. Add methods to refactor code.
*	##########################################################################################
*/
	require_once 'php/Connection.simple.php';
    $tutorialTitle = "Using Ajax to search a Record with PHP, MySQL and jQuery (Look and Feel by Bootstrap)";

	$conn = dbConnect();
 ?>
 <!DOCTYPE html>
<html lang="en">
    <head>
    	<meta charset="UTF-8" />
        <title><?php echo $tutorialTitle;?></title>
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
		<meta name="copyright" content="BEHSTANT SOFTWARE | Datasoft Engineering 2014"/>
		<meta name="author" content="Reedyseth"/>
		<meta name="email" content="ibarragan at behstant dot com"/>
		<meta name="description" content="<?php echo $tutorialTitle;?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel=stylesheet href="css/style01.css">
		<!-- Bootstrap -->
    	<link href="css/bootstrap.min.css" rel="stylesheet">
	</head>
    <body>
    	<div class="wrapper">
    		<div class="page-header ">
    			<h1 class="orangeFont noMargin">BEHSTANT SOFTWARE <small>Created by Israel Barragan</small></h1>
    			<div class="panel panel-default">
				 	<div class="panel-body">
				    	<h3 class="blueFont"><?php echo $tutorialTitle;?></h3>
					</div>
				</div>
    		</div>

    		<div class="mainContent">
    			<form class="form-horizontal form1" role="form" method="get">
    				<div class="form-group">
    					<label class="col-sm-2 control-label" for="name">Name</label>
    					<div class="input-group col-sm-9">
    						<input id="name" name="name" type="text" class="form-control" placeholder="Type the name" />
    						<span class="input-group-btn">
    								<button type="button" class="btn btn-default btnSearchByName">
    									<span class="glyphicon glyphicon-search"> Search</span>
    								</button>
    						</span>
    					</div>
    				</div>
    			</form>

                <form class="form-horizontal form2" role="form" method="get">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="id">Id</label>
                        <div class="input-group col-sm-9">
                            <input id="id" name="id" type="text" class="form-control" placeholder="Type the id" />
                            <span class="input-group-btn">
                                    <button type="button" class="btn btn-default btnSearchById">
                                        <span class="glyphicon glyphicon-search"> Search</span>
                                    </button>
                            </span>
                        </div>
                    </div>
                </form>

                <div class="row notificationPanel">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8  alert alert-warning" role="alert">
                        <p>Some Text</p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-2"></div>
                        <div class="col-sm-8">
                        <!-- This table is where the data is display. -->
                            <table id="resultTable" class="table table-striped table-hover">
                                <thead>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Telephone</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                </div>
            </div>
		</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.10.2.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	jQuery(document).ready(function($) {
            // This is the code to search by name
    		$('.btnSearchByName').click(function(){
                if (!validateData($('input#name').val())) {
                    showErrorPanel("You need to fill the data in order to get results!");
                    return false;
                }
    			makeAjaxRequest("name");
    		});

            $('.form1').submit(function(e){
                e.preventDefault();
                if (!validateData($('input#name').val())) {
                    showErrorPanel("You need to fill the data in order to get results!");
                    return false;
                }
                validateData()
                makeAjaxRequest("name");
                return false;
            });
            // end code to search by name
            // This is the code to search by Id
            $('.btnSearchById').click(function(){
                if (!validateData($('input#id').val())) {
                    showErrorPanel("You need to fill the data in order to get results!");
                    return false;
                }
                makeAjaxRequest("id");
            });

            $('.form2').submit(function(e){
                e.preventDefault();
                if (!validateData($('input#id').val())) {
                    showErrorPanel("You need to fill the data in order to get results!");
                    return false;
                }
                validateData()
                makeAjaxRequest("id");
                return false;
            });
            // end code to search by id


            function makeAjaxRequest(type) {
                if (type == "name") {
                    $.ajax({url: 'php/search.php',
                        type: 'get',
                        data: {name: $('input#name').val()},
                        success: function(response) {
                            $('table#resultTable tbody').html(response);
                        }
                    });
                } else if (type == "id") {
                    $.ajax({url: 'php/searchById.php',
                        type: 'get',
                        data: {id: $('input#id').val()},
                        success: function(response) {
                            $('table#resultTable tbody').html(response);
                        }
                    });
                }
            }
            function validateData(data) {
                if (data == "") {
                    return false;
                } else {
                    return true;
                }
            }

            function showErrorPanel(msg) {
                $('.notificationPanel div:eq(1)').text(msg).wrap("<strong></strong>");
                $('.notificationPanel').slideDown('normal');
                setTimeout(function() {
                    $('.notificationPanel').slideUp('normal');
                }, 3500)

            }
    	});
    </script>
	</body>
</html>