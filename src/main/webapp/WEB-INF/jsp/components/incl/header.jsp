<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Main Page Header -->
<header class="main-page-header mb-3 bg-primary">
    <!-- Container -->
    <div class="container d-flex align-items-center">
        <!-- company name -->
        <div class="company-name">Easy-Way Bank</div>
        <!-- company name -->

        <!-- navigation -->
        <nav class="navigation">
            <li><a href="">Dashboard</a></li>
            <li><a href="">Payment History</a></li>
            <li><a href="">Transaction History</a></li>
        </nav>
        <!-- end of navigation -->

        <!--  Display Name -->
        <div class="display-name ms-auto text-white">
            <i class="fa fa-circle text-success me-2"></i> Welcome:
            <span>${user.first_name} ${user.last_name}</span>
        </div>
        <!-- end of display name -->

        <!-- logout Button -->
        <a href="/logout" class="btn btn-sm text-white ms-2">
            <i class="fas fa-sign-out-alt" aria-hidden="true"></i> Sign Out
        </a>
        <!-- end of logout -->
    </div>
    <!-- end of container -->
</header>
<!--  End of main page header -->