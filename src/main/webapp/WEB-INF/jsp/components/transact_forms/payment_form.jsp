<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- card: Payment card -->
<div class="card payment-card">
    <!-- card Body -->
    <div class="card-body">
        <!-- Form Group -->
        <div class="form-group mb-2">
            <label for=""> Beneficiary Account Name</label>
            <input
                    type="text"
                    name="beneficiary"
                    class="form-control"
                    placeholder="Enter Beneficiary Account Name"
            />
        </div>
        <!-- End Form Group -->

        <!-- Form Group -->
        <div class="form-group mb-2">
            <label for=""> Beneficiary Account Number</label>
            <input
                    type="text"
                    name="account_number"
                    class="form-control"
                    placeholder="Enter Beneficiary Account No."
            />
        </div>
        <!-- End Form Group -->

        <!-- Form Group -->
        <div class="form-group">
            <label for="">Select Account</label>
            <!-- Select Account Option -->
            <select name="account_id" class="form-control" id="">
                <option value="">-- Select Account--</option>
            </select>
            <!-- End of Select Account Option -->
        </div>
        <!-- End Form Group -->

        <!-- Form Group -->
        <div class="form-group mb-2">
            <label for=""> Reference</label>
            <input
                    type="text"
                    name="reference"
                    class="form-control"
                    placeholder="Enter Reference"
            />
        </div>
        <!-- End Form Group -->

        <!-- Form Group -->
        <div class="form-group mb-2">
            <label for=""> Enter Payment Amount</label>
            <input
                    type="text"
                    name="payment-amount"
                    class="form-control"
                    placeholder="Enter Payment Amount"
            />
        </div>
        <!-- End Form Group -->

        <!-- Form Group -->
        <div class="form-group mb-2">
            <button class="btn btn-md transact-btn">Pay</button>
        </div>
        <!-- End Form Group -->
    </div>
    <!-- end of card Body -->
</div>
<!-- end of card: Payment card -->