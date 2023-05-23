<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- CARD: Deposit Card -->
<div class="card deposit-card">
    <!-- card Body -->
    <div class="card-body">
        <!-- Deposit Form -->
        <form action="/transact/deposit" method="POST" class="deposit-form">
            <!-- Form Group -->
            <div class="form-group mb-2">
                <label for=""> Enter Deposit Amount</label>
                <input
                        type="text"
                        name="deposit_amount"
                        class="form-control"
                        placeholder="Enter Deposit Amount"
                />
            </div>
            <!-- End Form Group -->

            <!-- Form Group -->
            <div class="form-group">
                <label for="">Select Account</label>
                <!-- Select Account Option -->
                <select name="account_id" class="form-control" id="">
                    <option value="">-- Select Account--</option>
                    <c:if test="${userAccounts != null}">
                        <c:forEach items="${userAccounts}" var="selectAccount">
                            <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                        </c:forEach>
                    </c:if>
                </select>
                <!-- End of Select Account Option -->
            </div>
            <!-- End Form Group -->

            <!-- Form Group -->
            <div class="form-group my-2">
                <button class="btn btn-md transact-btn">Deposit</button>
            </div>
            <!-- End Form Group -->
        </form>
        <!-- End OF Deposit Form -->
    </div>
    <!-- end of card Body -->
</div>
<!-- end of card: Deposit card -->