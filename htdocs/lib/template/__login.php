<?php
include_once "lib/load.php";
$active=false;
$show=false;
if(isset($_POST['email']) and isset($_POST['pass'])){
    $email=$_POST['email'];
    $pass=$_POST['pass'];
    $login=user::login($email,$pass);
    $active=true;
}
if($active){
    if($login){
        $_SESSION['username']=$login;
        header('location:index.php');
    }else{
        $show=true;
    }
}
?>
<link rel="stylesheet" href="lib/template/css/signup_or_login.css">
<div class="signup">
<div class="form">
    <form action="login.php" method="post">
        <table>
            <tr>
            <td colspan="2" style="text-align: center;padding:12px" ><h1>LOGIN</h1></td>
                
            </tr>
            <td><label for="">email</label></td>
                <td><input type="text" name="email" required></td>
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
                <td colspan="2" style="text-align: center;padding:10px;" ><button class="b" >submit</button></td>
            </tr>
        </table>
    </form>
</div>
</div>