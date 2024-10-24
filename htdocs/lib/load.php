<?php
include_once "lib/include/__database.php";
include_once "lib/include/__user.php";
session_start();
function get_file($name){
    include $_SERVER['DOCUMENT_ROOT']."/app1/app/htdocs/lib/template/$name.php";
}
global $file;
$file=file_get_contents($_SERVER['DOCUMENT_ROOT']."/app1/app/project/app3config.json");
function get_conf($name){
    global $file;
    $arr=json_decode($file,true);
    if(isset($arr[$name])){
        return $arr[$name];
    }else{
        return false;
    }
}