<!DOCTYPE html>
<html>
<head>
	<title>BSave</title>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

	<link rel="stylesheet" href="css/home.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="icon" type="image/png" href="css/images/favicon.ico"/>

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@100;300;400;500;600;700;800&display=swap" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="script/scripts.js"></script>
</head>
<body>
	<div class="wrapper wrapper--alt">
		<header class="header">
			<div class="header__aside">
				<img src="css/images/elipse.png" alt="">
			</div><!-- /.header__aside -->
		
			<div class="shell shell--fluid header__shell">
				<div class="header__logo">
					<a href="home.php" class="logo">
						<img src="css/images/logo.png" alt="">
					
						<h1>
							<span>B</span>Save
						</h1>
					</a><!-- /.logo -->
				</div><!-- /.header__logo -->
				
				<div class="header__menu">
					<div class="header__nav">
						<nav class="nav">
							<ul>
		
								<li>
									<a href="home.php">Home</a>
								</li>
		
								
		
								<li class="menu-item-has-children">
									<a href="#">Incomes</a>
		
									<ul>
										<li>
											<a href="income-add.php">Add income</a>
										</li>
										
										<li>
											<a href="revenue-history.php">Revenue History</a>
										</li>
										
										<li>
											<a href="income-references.php">Incomes by Date</a>
										</li>

										<li>
											<a href="category-references-income.php">Incomes by Category</a>
										</li>
									</ul>
								</li>
		
								<li class="menu-item-has-children">
									<a href="#">Expenses</a>
		
									<ul>
										<li>
											<a href="expense-add.php">Add Expense</a>
										</li>
										
										<li>
											<a href="expenses-history.php">Еxpenses History</a>
										</li>
										
										<li>
											<a href="expense-references.php">Expenses by Date</a>
										</li>

										<li>
											<a href="category-references-expense.php">Expenses by Category</a>
										</li>
									</ul>
								</li>
		
								<li>
									<a href="about.php">About Us</a>
								</li>
		
								<li>
									<a href="contact.php">Contacts</a>
								</li>
							</ul>
						</nav><!-- /.nav -->
					</div><!-- /.header__nav -->
					
					<div class="header__actions">
						<a href="login.php">
							<i>
								<img src="css/images/user.png" alt="">
							</i>
						</a>
					</div><!-- /.header__actions -->
				</div><!-- /.header__menu -->
			</div><!-- /.shell -->
		</header><!-- /.header -->
		
		<div class="hero">
			<div class="shell">
				<h1>Manage your finances easily and wisely</h1>
		
				<a href="#" class="btn btn--green">New Expense</a>
		
				<a href="income-add.php" class="btn btn--pink">New Income</a>
			</div><!-- /.shell -->
		</div><!-- /.hero -->	
	</div><!-- /.wrapper -->
</body>
</html>
