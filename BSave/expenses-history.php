<!DOCTYPE html>
<html>
<head>
	<title>BSave</title>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

	<link rel="stylesheet" href="css/history.css">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="icon" type="image/png" href="css/images/favicon.ico"/>

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Montserrat:wght@100;300;400;500;600;700;800&display=swap" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="script/scripts.js"></script>
</head>
<body>
	<div class="wrapper">
		<header class="header header--alt header--about">
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

		<div class="section-history" id="history">
			<div class="shell">
				<div class="section__title">
					<h1>History of all <span>expenses</span> you have added</h1>
				</div>

				<div class="section__content">
					<?php

						require_once('classes/config.php');

						$user_id = $_SESSION['user_id'];

						$sql =  "SELECT * FROM expenses
								JOIN categories_expenses ON categories_expenses.id_category=expenses.categoty_id
								WHERE user_id = '$user_id'
								ORDER BY ddate DESC;";

						$result = mysqli_query($dbConn,$sql);

						$count=mysqli_num_rows($result);
						$number = $count-($count-1);
						
						echo "<table>
								<tr>
									<th>&#8470;</th>
									<th>Value</th>
									<th>Category</th>
									<th>Description</th>
									<th>Date</th>
									<th></th>
								</tr>";
						
						while($row = mysqli_fetch_assoc($result)){
							echo "<tr>
									<td>".$number."</td>
									<td>".$row['value']."</td>
									<td>".$row['category_name']."</td>
									<td>".$row['description']."</td>
									<td>".$row['ddate']."</td>
									<td><a href='#' id='delete-expense' data-id=".$row['id_expense'].">&#10008;</a></td>
								</tr>";
							
							$count--;

							$number ++;
						}
						echo "</table>"; 
					?> 
				</div>	
			</div>
		</div>
	</div><!-- /.wrapper -->

	<script type="text/javascript" src="script/scripts.js" charset="utf-8"></script>
</body>
</html>