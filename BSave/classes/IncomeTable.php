<?php
require_once('Income.php');

class IncomeTable extends Income {

	function addIncome($income) {
		$userId = $_SESSION['user_id'];

		$value = $income->getValue();
		$category = $income->getCategoryId();
		$description = $income->getDescription();
		$date = $income->getDdate();

		require_once('config.php');

		$sql = "INSERT INTO incomes (user_id, value, category_id ,description, ddate)
				VALUES ($userId, $value, $category, '$description', '$date')";

		mysqli_query($dbConn,$sql);		
	}
}

?>