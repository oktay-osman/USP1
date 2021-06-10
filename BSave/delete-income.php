<?php
	$income = filter_input(INPUT_POST, 'id_income', FILTER_SANITIZE_NUMBER_INT);
	$success = false;

	if ($income) {
		include "classes/config.php"; 

		$sql="DELETE FROM incomes WHERE id_income = " . $income;
		$result=mysqli_query($link, $sql);
		$success = true;
	}
	header('Content-Type: application/json');
	echo json_encode(array('success' => $success));
?>