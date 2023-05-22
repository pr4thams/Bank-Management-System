<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Container: No Accounts -->
<div class="container">
    <!-- card: no accounts -->
    <div class="card no-accounts-card">
        <!-- card body -->
        <div class="card-body">
            <!-- Card Title -->
            <h1 class="card-title">
                <i class="fas fa-ban text-danger"></i> NO Registered Accounts
            </h1>
            <!-- End of Card Title -->
            <hr />
            <!-- Card Text -->
            <div class="card-text">
                You currently do not have any registered accounts. <br />
                Please click below to register / add a new account.
            </div>
            <!-- End of Card Text -->
            <br />
            <button
                    id=""
                    class="btn btn-primary btn-md shadow"
                    type="button"
                    data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasRight"
                    aria-controls="offcanvasRight"
            >
                <i class="fa fa-credit-card"></i> Add New Account
            </button>
        </div>
        <!-- end of card body -->
    </div>
    <!-- end of card: no accounts -->
</div>
<!-- End of Container: No Accounts -->