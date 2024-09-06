<?php

    require_once __DIR__ . '/Resposta.php';

    function echoJson($mensagemPersonalizada, $codigo) {
        // Cria a resposta com base no código fornecido
        $resposta = Resposta::construirResp($codigo);

        // Cria um array com a mensagem personalizada e os dados da resposta
        $respostaArray = [
            'codigo' => $resposta->getCodigo(),
            'mensagem' => $resposta->getMensagem(),
            'mensagemPersonalizada' => $mensagemPersonalizada
        ];

        // Converte o array em JSON e o retorna
        return json_encode($respostaArray);
    }

