<?php

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone_number = isset($_POST['input_5']) ? $_POST['input_5'] : '';
    $company = isset($_POST['input_6']) ? $_POST['input_6'] : '';
    $purpose = isset($_POST['input_7']) ? $_POST['input_7'] : '';
    $message = $_POST['message'];
    $agree_terms = isset($_POST['input_9.1']) ? 1 : 0; // Checkbox value

    try {
        require "dbh.inc.php";

        $query = "INSERT INTO form_submissions (name, email, phone_number, company, purpose, message, agree_terms) VALUES (?, ?, ?, ?, ?, ?, ?);";

        $stmt = $pdo->prepare($query);

        // Pass the parameters as an array to execute
        $stmt->execute([$name, $email, $phone_number, $company, $purpose, $message, $agree_terms]);

        $pdo = null;
        $stmt = null;

        header("Location: /slovenske-zeljeznice/sz-vit.si/index.html");

        die();
    } catch (PDOException $e){
        die("Query failed: " . $e->getMessage());
    }
} else {
    header("Location: /slovenske-zeljeznice/sz-vit.si/index.html");
}

?>
