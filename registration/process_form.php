<?php
// Include database configuration file to connect to the database
include("../db_configlogin.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data and sanitize it
    $fname = htmlspecialchars(trim($_POST['FIRST_NAME']));
    $lname = htmlspecialchars(trim($_POST['LAST_NAME']));
    $usertype = htmlspecialchars(trim($_POST['USERTYPE']));
    $phonenum = htmlspecialchars(trim($_POST['PHONE_NUMBER']));
    $email = htmlspecialchars(trim($_POST['EMAIL']));
    $uname = htmlspecialchars(trim($_POST['USERNAME']));
    $pword = htmlspecialchars(trim($_POST['PASSWORD']));
    
    // Check if username already exists in the database
    $sql = "SELECT * FROM user WHERE uname = ?";
    $stmt = $connection->prepare($sql);
    $stmt->bind_param("s", $uname);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "Username already exists. Please choose another one.";
    } else {
        // Hash the password
        $hashed_password = md5($pword);


        // Insert data into the database
        $sql = "INSERT INTO user (uname, pword, fname, lname, usertype, email, phonenum) VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("sssssss", $uname, $hashed_password, $fname, $lname, $usertype, $email, $phonenum);

        if ($stmt->execute()) {
            echo "Registration successful!";
        } else {
            echo "Error: " . $stmt->error;
        }
    }

    // Close database connection
    $stmt->close();
    $connection->close();
}
?>
