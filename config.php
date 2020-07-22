<?php session_start();
$conn = mysqli_connect("localhost", "root", "","quizzer");
//mysql_select_db("quizzer");
//$email=mysqli_real_escape_string($_POST['email']);
//$pass=mysqli_real_escape_string($_POST['pass']);
/*
if(!empty($email)){
if(!empty($pass)){
    $sql= "SELECT * FROM users where `email`='$email'";
    $query=mysqli_query($conn,$sql);
    while ($row=mysqli_fetch_array($query)){
        $fullname=$row['fullname'];
        $db_mail=$row['email'];
        $db-pass=$row['password']; 
    }
    if ($email===$db_mail&&$pass===$db_pass){
        $SESSION['fullname']=$fullname;
        $SESSION['email']=$email;
        header("location:home.php");
    }else{
        echo"error in login";
    }
}else{
    echo "error in password";
}    
    
}else{
    
    echo"error in email";
}
*/
?>