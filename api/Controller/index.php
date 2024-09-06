<?php 
    $metodo = $_SERVER['REQUEST_METHOD'];
    echo $metodo;

    require_once '../Model/Resposta.php';
    
    switch ($metodo) {
        case 'GET':
            
            break;
        case 'POST':
            break;
        case 'PUT':
            break;
        case 'DELETE':
            break;
        case 'PATCH':
            break;
        default:
        
            break;
    }