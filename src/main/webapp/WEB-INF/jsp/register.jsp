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
    <title>Register</title>
</head>
<body class="d-flex align-items-center justify-content-center">
<!-- register form card -->
<div class="card registration-form-card col-6 bg-transparent border-0">
    <!-- card body -->
    <div class="card-body">
        <!-- form header -->
        <h1 class="form-header card-title mb-3">
            <i class="fa fa-edit"></i> Register
        </h1>
        <!-- end form header -->

        <!-- Registration Form -->
        <form:form action="/register" class="reg-form" modelAttribute="registerUser">
            <!-- ROW -->
            <div class="row">
                <!-- Form Group -->
                <div class="form-group col">
                    <form:input
                            type="text"
                            path="first_name"
                            class="form-control form-control-lg"
                            placeholder="Enter First Name"
                    />
                    <form:errors path="first_name" class="text-white bg-danger" />
                </div>
                <!-- End form group -->

                <!-- Form Group -->
                <div class="form-group col">
                    <form:input
                            type="text"
                            path="last_name"
                            class="form-control form-control-lg"
                            placeholder="Enter Last Name"
                    />
                    <form:errors path="last_name" class="text-white bg-danger" />
                </div>
                <!-- End form group -->
            </div>
            <!-- End of row -->

            <!-- Form Group -->
            <div class="form-group col">
                <form:input
                        type="email"
                        path="email"
                        class="form-control form-control-lg"
                        placeholder="Enter Email"
                />
                <form:errors path="email" class="text-white bg-danger" />
            </div>
            <!-- End form group -->

            <!-- ROW -->
            <div class="row">
                <!-- Form Group -->
                <div class="form-group col">
                    <form:input
                            type="password"
                            path="password"
                            class="form-control form-control-lg"
                            placeholder="Enter Password"
                    />
                    <form:errors path="password" class="text-white bg-danger" />
                </div>
                <!-- End form group -->

                <!-- Form Group -->
                <div class="form-group col">
                    <input
                            type="password"
                            name="confirm_password"
                            class="form-control form-control-lg"
                            placeholder="Confirm Password"
                    />
                    <small class="text-white bg-danger">${confirm_pass}</small>
                </div>
                <!-- End form group -->
            </div>
            <!-- End of row -->

            <!-- Form Group -->
            <div class="form-group col">
                <button class="btn btn-lg">Register</button>
            </div>
            <!-- End form group -->
        </form:form>
        <!-- end Registration Form -->

        <!-- Card tExt -->
        <p class="card-text text-white my-2">
            Already have an account?
            <span class="ms-2"
            ><a href="/login" class="btn btn-sm text-warning">Sign In</a></span
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
<!-- end rigister card -->
</body>
</html>
