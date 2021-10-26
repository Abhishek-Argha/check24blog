<?php
    // Include config file
    require_once "connect.php";

    $sql = "SELECT article.title, article.description, article.created_at, user.first_name, user.last_name from article,user where user.ID = article.created_by order by article.created_at desc";
    $result = $conn->query($sql);
    if ($conn->query($sql) === FALSE) {
        echo "Error: " . $sql . "<br>" . $conn->error; 
     }else{
        while($row = mysqli_fetch_array($result)) {
            echo '<h2>Title: '.$row['title'].'</h2>';
            echo '<h3>Author: '.$row['first_name'].'</h3>';
            echo '<h3>Created: '.$row['created_at'].'</h3><br/>';
            echo '<p>'.$row['description'].'</p><br/><br/>';
        }
     }
?>