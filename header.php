<?php
// Initialize the session
    session_start();
    
 
    // Check if the user is already logged in, if yes then redirect him to welcome page
    if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
        //header("location: index.php");
        //exit;
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>"Check24 Blog"</title>
    </head>

    <body>
        <a href="https://placeholder.com"><img src="https://via.placeholder.com/150"></a>
        <h1>Check24 Blog</h1>

        <table>
         <tr>
            <?php if(isset($_SESSION) && isset($_SESSION["loggedin"])){
                    echo '<td>Hello</td>';
                    echo '<td>'.$_SESSION['first_name'].'</td>';
                    if($_SESSION["user_type"] == "admin"){
                    echo '<td><a href="article.php">New entry</a></td>';
                    }
                    echo '<td><a href="logout.php">logout</a></td>';
                
                }else{
                    echo '<td><a href="login.php">login</a></td>';
                }
            ?>
         </tr>
        </table>
    </body>
</html>