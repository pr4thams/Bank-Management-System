<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="css/fontawesome/css/all.css" />
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap");
        * {
            box-sizing: border-box;
            font-family: "Comfortaa", cursive;
        }
        body {
            height: 100vh;
            background-image: url("./images/main_bg.png");
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }
        .card {
            box-shadow: 0px 3px 6px rgb(0, 14, 53);
        }
        .card .card-text {
            font-size: 16px;
        }
    </style>
    <title>Error</title>
</head>
<body class="d-flex align-items-center justify-content-center">
<!-- Error card -->
<div class="card col-4 alert alert-danger border border-danger text-danger">
    <!-- Card Title -->
    <h3 class="card-title"><i class="fa fa-window-close me-2"></i>Errors</h3>
    <!-- End of Card title -->
    <hr />
    <!-- Card Body -->
    <div class="card-body">
        <!-- card text -->
        <p class="card-text">
            <%-- Display message --%>
            <c:if test="${requestScope.error != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.error}</b>
                </div>
            </c:if>
            <%-- End of Display message --%>
        </p>
        <!-- end of card text -->
        <hr />
        <a href="/login" class="btn- btn-sm btn-danger">
            <i class="fa fa-arrow-alt-circle-left me-1"></i> Back
        </a>
    </div>
    <!-- End of card body -->
</div>
<!-- End Error card -->
</body>
</html>
