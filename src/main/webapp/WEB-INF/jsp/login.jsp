<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/default.css" />
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="css/fontawesome/css/all.css" />
    <title>Login</title>
</head>
<body class="d-flex align-items-center justify-content-center">
<!-- login form card -->
<div class="card login-form-card col-4 bg-transparent border-0">
    <!-- card body -->
    <div class="card-body">
        <!-- form header -->
        <h1 class="form-header card-title mb-3">
            <i class="fa fa-user-circle"></i> Login
        </h1>
        <!-- end form header -->

        <%-- Display message --%>
        <c:if test="${requestScope.success != null}">
            <div class="alert alert-success text-center border border-success">
                <b>${requestScope.success}</b>
            </div>
        </c:if>
        <%-- End of Display message --%>

        <%-- Display message --%>
        <c:if test="${requestScope.error != null}">
            <div class="alert alert-danger text-center border border-danger">
                <b>${requestScope.error}</b>
            </div>
        </c:if>
        <%-- End of Display message --%>

        <!-- login Form -->
        <form action="/login" method="POST" class="login-form">
            <!-- Form Group -->
            <div class="form-group col">
                <input
                        type="email"
                        name="email"
                        class="form-control form-control-lg"
                        placeholder="Enter Email"
                />
            </div>
            <!-- End form group -->

            <!-- Form Group -->
            <div class="form-group col">
                <input
                        type="password"
                        name="password"
                        class="form-control form-control-lg"
                        placeholder="Enter Password"
                />
            </div>
            <!-- End form group -->

            <!-- Form Group -->
            <div class="form-group col">
                <input
                        type="hidden"
                        name="_token"
                        value="${token}"
                />
            </div>
            <!-- End form group -->

            <!-- Form Group -->
            <div class="form-group col">
                <button class="btn btn-lg">Login</button>
            </div>
            <!-- End form group -->
        </form>
        <!-- end Registration Form -->

        <!-- Card tExt -->
        <p class="card-text text-white my-2">
            Don't have an account?
            <span class="ms-2"
            ><a href="/register" class="btn btn-sm text-warning"
            >Sign Up</a
            ></span
            >
        </p>
        <!-- end card text -->

        <!-- Back button to landing-->
        <small class="text-warning">
            <i class="fa fa-arrow-alt-circle-left"></i>
            <a href="/" class="btn btn-sm text-warning">Back</a>
        </small>
        <!-- end back button to landing -->
    </div>
    <!-- end card body -->
</div>
<!-- end login card -->
</body>
</html>
