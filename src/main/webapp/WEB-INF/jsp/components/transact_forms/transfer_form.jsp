<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- CARD: Transfer Card -->
<div class="card transfer-card">
    <!-- card Body -->
    <div class="card-body">
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
            <label for=""> Enter Transfer Amount</label>
            <input
                    type="text"
                    name="transfer-amount"
                    class="form-control"
                    placeholder="Enter Transfer Amount"
            />
        </div>
        <!-- End Form Group -->

        <!-- Form Group -->
        <div class="form-group mb-2">
            <button class="btn btn-md transact-btn">Transfer</button>
        </div>
        <!-- End Form Group -->
    </div>
    <!-- end of card Body -->
</div>
<!-- end of card: transfer card -->