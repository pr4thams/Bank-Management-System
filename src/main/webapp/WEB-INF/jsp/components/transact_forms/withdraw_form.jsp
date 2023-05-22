<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- CARD: WITHDRAW CARD -->
<div class="card withdraw-card">
    <!-- card Body -->
    <div class="card-body">
        <!-- withdraw Form -->
        <form action="" class="withdraw-form">
            <!-- Form Group -->
            <div class="form-group mb-2">
                <label for=""> Enter Withdrawal Amount</label>
                <input
                        type="text"
                        name="withdrawal-amount"
                        class="form-control"
                        placeholder="Enter Withdrawal Amount"
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
            <div class="form-group my-2">
                <button class="btn btn-md transact-btn">Withdraw</button>
            </div>
            <!-- End Form Group -->
        </form>
        <!-- End OF withdraw Form -->
    </div>
    <!-- end of card Body -->
</div>
<!-- end of card: withdraw card -->