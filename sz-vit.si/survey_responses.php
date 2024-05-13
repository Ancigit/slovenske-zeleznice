<?php

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $question1 = $_POST['question1'];
    $question2 = $_POST['question2'];
    $question3 = $_POST['question3'];
    $question4 = $_POST['question4'];
    $question5 = $_POST['question5'];
    $question6 = $_POST['question6'];
    $question7 = $_POST['question7'];

    try {
        require "dbh.inc.php";

        $query = "INSERT INTO survey_responses (question1, question2, question3, question4, question5, question6, question7) VALUES (?, ?, ?, ?, ?, ?, ?)";

        $stmt = $pdo->prepare($query);

        // Pass the parameters as an array to execute
        $stmt->execute([$question1, $question2, $question3, $question4, $question5, $question6, $question7]);

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
