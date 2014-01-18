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
*	1.0     |	11-Nov-2013	|	Creation of new file to integrate the user ID on the query string.
*   V140117 |   17-Jan-2013 |   Added Two columns, jQuery code to place data into a form.
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
		<meta name="copyright" content="BEHSTANT SOFTWARE | Datasoft Engineering 2013"/>
		<meta name="author" content="Reedyseth"/>
		<meta name="email" content="ibarragan at behstant dot com"/>
		<meta name="description" content="<?php echo $tutorialTitle;?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel=stylesheet href="css/style01.css">
		<!-- Bootstrap -->
    	<link href="css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            #form2 {display: none;}
        </style>
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
    			<form class="form-horizontal" role="form" method="get">
    				<div class="form-group">
    					<label class="col-sm-2 control-label" for="name">Name</label>
    					<div class="input-group col-sm-9">
    						<input id="name" name="name" type="text" class="form-control" placeholder="Type the name" />
    						<span class="input-group-btn">
    								<button type="button" class="btn btn-default btnSearch">
    									<span class="glyphicon glyphicon-search"> Search</span>
    								</button>
    						</span>
    					</div>
    				</div>
    			</form>
                <div class="col-sm-2"></div>
                <div class="col-sm-9">
                <!-- This table is where the data is display. -->
                    <table id="resultTable" class="table table-striped table-hover">
                        <thead>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Telephone</th>
                            <th colspan='2'></th>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
                <div class='clearfix'></div>
                <form id='form2' class="form-horizontal" role="form" method="get">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="id">Id</label>
                        <div class="input-group col-sm-1">
                            <input id="id" name="id" type="text" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="nameForm">Name</label>
                        <div class="input-group col-sm-8">
                            <input id="nameForm" name="nameForm" type="text" class="form-control" placeholder="Type the name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="email">Email</label>
                        <div class="input-group col-sm-8">
                            <input id="email" name="email" type="text" class="form-control" placeholder="Type the Email" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="tel">Telephone</label>
                        <div class="input-group col-sm-8">
                            <input id="tel" name="tel" type="text" class="form-control" placeholder="Type the Telephone" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-9"></label>
                        <button class='btn btn-primary'>Save</button>
                    </div>
                </form>
    		</div>
		</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.10.2.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	jQuery(document).ready(function($) {
    		$('.btnSearch').click(function(){
    			makeAjaxRequest();
    		});

            $('form').submit(function(e){
                e.preventDefault();
                makeAjaxRequest();
                return false;
            });

            $('table#resultTable').on('click','button.btnEditDB',function() {
                makeAjaxRequestToForm($(this).data('employeeid'));
            });

            $('table#resultTable').on('click','button.btnEditTable',function() {
                var elements = $(this).parent().parent();
                $('input#id').val(elements.find('td:eq(0)').text());
                $('input#nameForm').val(elements.find('td:eq(1)').text());
                $('input#email').val(elements.find('td:eq(2)').text());
                $('input#tel').val(elements.find('td:eq(3)').text());
            });

            function makeAjaxRequest() {
                $.ajax({url: 'php/search2.php',
                    type: 'get',
                    data: {name: $('input#name').val()},
                    success: function(response) {
                        $('table#resultTable tbody').html(response);
                        $('form#form2').slideDown();
                    }
                });
            }
            function makeAjaxRequestToForm(id) {
                $.ajax({
                    url: 'php/search3.php',
                    type: 'get',
                    data: {id: id},
                    dataType: 'json',
                    success: function(response) {
                        $('input#id').val(response.employee_id);
                        $('input#nameForm').val(response.name);
                        $('input#email').val(response.email);
                        $('input#tel').val(response.telephone);
                    }
                });
            }
    	});
    </script>
	</body>
</html>