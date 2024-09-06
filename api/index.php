<?php 
    $metodo = $_SERVER['REQUEST_METHOD'];
    echo $metodo;

    require_once __DIR__.'/Model/Resposta.php';
    
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
