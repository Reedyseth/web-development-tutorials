<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Usage of jQuery Datatables Plugin">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>jQuery Datatables</title>
        <link rel="stylesheet" href="css/datatables.min.css"/>
        <link rel="stylesheet" href="css/style.css">
        <link rel="author" href="Reedyseth">
    </head>
    <body>
		<!-- Responsive Nav Bar only to desmotration purposes -->
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
                <p class="navbar-text">jQuery Datatables example by <strong>Reedyseth</strong></p>
            </div>
        </nav>

        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading"><span class="glyphicon glyphicon-th-list"></span> Employee list</div>

                    <div class="panel-body">
                        <table id="resultTable" class="table table-striped resultTable">
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
        <!-- We place the Javascript code at the end of the page for a better page rendering -->
        <!-- The dataTable Min file includes jQuery 2.x, Bootstrap and datatables itself -->
        <script src="js/datatables.min.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>