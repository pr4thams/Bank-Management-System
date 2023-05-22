<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!-- Right side off canvas: accounts form container -->
<div
        class="offcanvas offcanvas-end"
        tabindex="-1"
        id="offcanvasRight"
        aria-labelledby="offcanvasRightLabel"
>
    <div class="offcanvas-header">
        <h5 class="offcanvas-title text-white" id="offcanvasRightLabel">
            Create / Add an Account
        </h5>
        <button
                type="button"
                class="btn-close"
                data-bs-dismiss="offcanvas"
                aria-label="Close"
        ></button>
    </div>
    <!-- Offcanvas Body: Accounts FORM Wrapper -->
    <div class="offcanvas-body">
        <!-- Card: Accounts form -->
        <div class="card">
            <!-- Card Body -->
            <div class="card-body">
                <form action="" class="add-account-form">
                    <!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for="">Enter Account Name</label>
                        <input
                                type="text"
                                name="account_name"
                                class="form-control"
                                placeholder="Enter Account Name..."
                        />
                    </div>
                    <!-- End of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for="">Select Account Type</label>
                        <select name="account_type" class="form-control" id="">
                            <option value="">-- Select Account Type --</option>
                            <option value="check">Check</option>
                            <option value="savings">Savings</option>
                            <option value="business">Business</option>
                        </select>
                    </div>
                    <!-- End of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group my-2">
                        <button class="btn btn-md transact-btn">Add Account</button>
                    </div>
                    <!-- End of Form Group -->
                </form>
            </div>
            <!-- End OF Card Body -->
        </div>
        <!-- End of Card: Accounts form -->
    </div>
    <!-- End of Offcanvas Body: Accounts FORM Wrapper -->
</div>
<!-- End of Right Side off canvas: accounts form container -->