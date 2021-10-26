<?php
require_once "header.php";

// Include config file
require_once "connect.php";

if($_SESSION["user_type"] != "admin"){
    header("location: index.php");
}
 
// Define variables and initialize with empty values
$title = $description= "";
$title_err = $description_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Check if title is empty
    if(empty(trim($_POST["title"]))){
        $title_err = "Please enter title.";
    } else{
        $title = trim($_POST["title"]);
    }
    
    // Check if description is empty
    if(empty(trim($_POST["description"]))){
        $description_err = "Please enter description of your article";
    } else{
        $description = trim($_POST["description"]);
    }

    echo "title: ";
    echo $title;
    echo "<br/>description: ";
    echo $description;
    // Validate credentials
    if(empty($title_err) && empty($description_err)){
        echo "now i need to start adding article";
        echo $_SESSION["id"];
        // Prepare a select statement
        $sql = 'INSERT INTO article (title, description, created_by) VALUES ("'.$title.'", "'.$description.'", '.$_SESSION["id"].')';
        if ($conn->query($sql) === FALSE) {
           echo "Error: " . $sql . "<br>" . $conn->error; 
        }else{
            header("location: index.php");
        }
  
        
    }
}

// Close connection
mysqli_close($conn);
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Article</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 360px; padding: 20px; }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Add Article</h2>
        <p>Please add title and description.</p>

        <?php 
        if(!empty($login_err)){
            echo '<div class="alert alert-danger">' . $login_err . '</div>';
        }        
        ?>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <label>Title</label>
                <input type="text" name="title" class="form-control <?php echo (!empty($title_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $title; ?>">
                <span class="invalid-feedback"><?php echo $title_err; ?></span>
            </div>    
            <div class="form-group">
                <label>Description</label>
                <input type="textarea" name="description" class="form-control <?php echo (!empty($description_err)) ? 'is-invalid' : ''; ?>">
                <span class="invalid-feedback"><?php echo $description_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Add Article">
            </div>
        </form>
    </div>
</body>
</html>