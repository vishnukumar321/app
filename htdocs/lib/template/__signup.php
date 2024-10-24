<?php 
include_once "lib/load.php";
$active=false;
$show=false;
if(isset($_POST['name']) and isset($_POST['email']) and isset($_POST['phone']) and isset($_POST['pass'])){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $pass=$_POST['pass'];
    $signup=user::signup($name,$email,$phone,$pass);
    
    $active=true;
}
if($active){
    if($signup){
        $_SESSION['signup']=true;
        header('location:index.php');
    }else{
        $show=true;
    }
}
?>
<link rel="stylesheet" href="lib/template/css/signup_or_login.css">
<div class="signup">
<div class="form">
    <form action="signup.php" method="post">
        <table>
            <tr>
            <td colspan="2" style="text-align: center;padding:12px" ><h1>SIGNUP</h1></td>
                
            </tr>
            <tr>
                <td><label for="">username</label></td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
            <td><label for="">email</label></td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
            <td><label for="">phone</label></td>
                <td><input type="tel" name="phone" required></td>
                
            </tr>
            <tr>
            <td><label for="">password</label></td>
                <td><input type="password" name="pass" required></td>
                
            </tr>
            <?php
            if($show){
                ?><tr>
                <td colspan="2"><br><h3 style="color: red;text-align:center" >Username or password is already used</h3></td>
            </tr><?php
            }
            ?>
            <tr>
                <td colspan="2" style="text-align: center;padding:10px;" ><button class="b" style="" >submit</button></td>
            </tr>
        </table>
    </form>
</div>
</div>