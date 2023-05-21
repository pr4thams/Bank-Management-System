<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="css/fontawesome/css/all.css" />
    <link rel="stylesheet" href="css/main.css" />
    <script src="js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>
<!-- Main Page Header -->
<header class="main-page-header mb-3 bg-primary">
    <!-- Containber -->
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
            <span>John Doe</span>
        </div>
        <!-- end of display name -->

        <!-- logout Button -->
        <a href="" class="btn btn-sm text-white ms-2">
            <i class="fas fa-sign-out-alt" aria-hidden="true"></i> Sign Out
        </a>
        <!-- end of logout -->
    </div>
    <!-- end of cantainer -->
</header>
<!--  End of main page header -->

<!-- Start of Transact offcanvas body -->
<div
        class="offcanvas offcanvas-start"
        tabindex="-1"
        id="offcanvasExample"
        aria-labelledby="offcanvasExampleLabel"
>
    <div class="offcanvas-header">
        <h5 class="offcanvas-title text-white" id="offcanvasExampleLabel">
            Transact
        </h5>
        <button
                type="button"
                class="btn-close"
                data-bs-dismiss="offcanvas"
                aria-label="Close"
        ></button>
    </div>
    <!-- Offcanvas Transact body -->
    <div class="offcanvas-body">
        <small class="card-text text-white">
            Choose an Option below to perform a Transaction
        </small>
        <!-- Transaction type dropdown list -->
        <select
                name="transact-type"
                class="form-control my-3"
                id="transact-type"
        >
            <option value="">-- Select Transaction Type--</option>
            <option value="payment">Payment</option>
            <option value="transfer">Transfer</option>
            <option value="deposit">Deposit</option>
            <option value="withdraw">Withdraw</option>
        </select>
        <!-- end of Transaction type dropdown list -->

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

        <!-- CARD: Deposit Card -->
        <div class="card deposit-card">
            <!-- card Body -->
            <div class="card-body">
                <!-- Deposit Form -->
                <form action="" class="deposit-form">
                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Enter Deposit Amount</label>
                        <input
                                type="text"
                                name="deposit-amount"
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
    </div>
    <!-- end of Offcanvas Transact body -->
</div>
<!-- end of off Transact canvas body-->

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

<!-- Container -->
<div class="container d-flex">
    <button
            id="add-account-btn"
            class="btn btn-lg shadow"
            type="button"
            data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasRight"
            aria-controls="offcanvasRight"
    >
        <i class="fa fa-credit-card"></i> Add New Account
    </button>
    <!-- Transaction Button -->
    <button
            id="transact-btn"
            class="btn btn-lg ms-auto shadow"
            type="button"
            data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasExample"
            aria-controls="offcanvasExample"
    >
        <i class="fa fa-wallet"></i> Transact
    </button>
    <!-- End ofTransaction Button -->
</div>
<!-- End of container -->

<!-- Container: Total Accounts Balance Display -->
<div class="container d-flex py-3">
    <h2 class="me-auto">Total Accounts balance:</h2>
    <h2 class="ms-auto">0.00</h2>
</div>
<!-- End of Container: Total Accounts Balance Display -->

<!-- Container: Accordian Menu -->
<div class="container">
    <!-- Accordian Menu -->
    <div class="accordion accordion-flush" id="accordionFlushExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingOne">
                <button
                        class="accordion-button collapsed"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseOne"
                        aria-expanded="false"
                        aria-controls="flush-collapseOne"
                >
                    Accordion Item #1
                </button>
            </h2>
            <div
                    id="flush-collapseOne"
                    class="accordion-collapse collapse"
                    aria-labelledby="flush-headingOne"
                    data-bs-parent="#accordionFlushExample"
            >
                <div class="accordion-body">
                    Placeholder content for this accordion, which is intended to
                    demonstrate the <code>.accordion-flush</code> class. This is the
                    first item's accordion body.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingTwo">
                <button
                        class="accordion-button collapsed"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseTwo"
                        aria-expanded="false"
                        aria-controls="flush-collapseTwo"
                >
                    Accordion Item #2
                </button>
            </h2>
            <div
                    id="flush-collapseTwo"
                    class="accordion-collapse collapse"
                    aria-labelledby="flush-headingTwo"
                    data-bs-parent="#accordionFlushExample"
            >
                <div class="accordion-body">
                    Placeholder content for this accordion, which is intended to
                    demonstrate the <code>.accordion-flush</code> class. This is the
                    second item's accordion body. Let's imagine this being filled with
                    some actual content.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingThree">
                <button
                        class="accordion-button collapsed"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#flush-collapseThree"
                        aria-expanded="false"
                        aria-controls="flush-collapseThree"
                >
                    Accordion Item #3
                </button>
            </h2>
            <div
                    id="flush-collapseThree"
                    class="accordion-collapse collapse"
                    aria-labelledby="flush-headingThree"
                    data-bs-parent="#accordionFlushExample"
            >
                <div class="accordion-body">
                    Placeholder content for this accordion, which is intended to
                    demonstrate the <code>.accordion-flush</code> class. This is the
                    third item's accordion body. Nothing more exciting happening here
                    in terms of content, but just filling up the space to make it
                    look, at least at first glance, a bit more representative of how
                    this would look in a real-world application.
                </div>
            </div>
        </div>
    </div>
    <!-- End of Accordian Menu -->
</div>
<!-- End of Container: Accordian Menu -->

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

<script src="js/main.js"></script>
</body>
</html>
