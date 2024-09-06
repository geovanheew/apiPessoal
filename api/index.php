<?php 
header('Content-Type: Application/json');


    $metodo = $_SERVER['REQUEST_METHOD'];

    require_once __DIR__.'/Model/Ultilidades/Resposta.php';
    require_once __DIR__.'/Model/Ultilidades/Funcoes.php';
    
    switch ($metodo) {
        case 'GET':
            echo echoJson("METHOD: GET", '200');
            echo 'teste';
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
