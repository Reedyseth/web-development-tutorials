<?php
/**
*	@author 	Israel Barragan C. AKA reedyseth  Email: reedyseth at gmail dot com
*	@since 		07-Nov-2013
*   @version    160403
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
*	##########################################################################################
*	@changelog
*	##########################################################################################
*	1.0	    |	11-Nov-2013	|	Creation of new file to integrate the user ID on the query string.
*   1407707 |   07-Jun-2014 |   Add search by Id. Add user interface interaction. Add methods to refactor code.
*	##########################################################################################
*/
    $tutorialTitle = "Using Ajax to search a Record with PHP, MySQL and jQuery (Look and Feel by Bootstrap) example by <strong>Reedyseth</strong>";
 ?>
 <!DOCTYPE html>
<html lang="en">
    <head>
    	<meta charset="UTF-8" />
        <title><?php echo $tutorialTitle;?></title>
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
		<meta name="copyright" content="Datasoft Engineering 2016"/>
		<meta name="author" content="Reedyseth"/>
		<meta name="email" content="reedyseth@gmail.com"/>
		<meta name="description" content="<?php echo $tutorialTitle;?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel=stylesheet href="css/style.css">
	</head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="http://datasoftengineering.com/" targer="_blank">Datasoft Engineering</a>
                </div>
                <p class="navbar-text orangeFont"><?php echo $tutorialTitle;?></p>
            </div>
        </nav>

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-primary-inverse">
                    <div class="panel-heading orangeFont"><span class="glyphicon glyphicon-th-list"></span> Employee Search</div>

                    <div class="panel-body">
                        <form class="form-horizontal form1" role="form" method="get">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="name">Name</label>
                                <div class="input-group col-sm-9">
                                    <input id="name" name="name" type="text" class="form-control" placeholder="Type the name" />
                                    <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary btnSearchByName">
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
                                    <input id="id" name="id" type="text" class="form-control" placeholder="Type the id"
                                         aria-describedby="helpBlock" />
                                    <span class="input-group-btn">
                                            <button type="button" class="btn btn-primary btnSearchById">
                                                <span class="glyphicon glyphicon-search"> Search</span>
                                            </button>
                                    </span>                                    
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-sm-2 col-md-2"></div>
                                <div class="col-sm-5 col-md-9"><span id="helpBlock" class="help-block">To search a name type it on the name field. if you know the id you can also use it on the id field.</span></div>
                            </div>

                        </form>

                        <div class="row notificationPanel">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8  alert alert-warning" role="alert">
                                <p>Some Text</p>
                            </div>
                        </div>

                        <table id="resultTable" class="table table-striped resultTable table-hover">
                            <thead>
                                <tr>
                                    <th><span class="glyphicon glyphicon-barcode"></span> Employee ID</th>
                                    <th><span class="glyphicon glyphicon-user"></span> Name</th>
                                    <th><span class="glyphicon glyphicon-envelope"></span> Email</th>
                                    <th><span class="glyphicon glyphicon-phone"></span> Telephone</th>
                                </tr>
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
    <script src="js/app.js"></script>    
	</body>
</html>