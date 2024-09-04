<?php 

  $req = $_SERVER;

switch ($_SERVER["REQUEST_METHOD"]) {
    case 'GET':
        echo 'GET';
        break;
    default:
        echo 'seila';
        break;
}
