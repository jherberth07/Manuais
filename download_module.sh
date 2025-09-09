#!/bin/bash

# Base URLs and paths
BASE_URL="https://raw.githubusercontent.com/jherberth07/mod-sei-rest-ai/8144efd92d09e82fc0b9c1e62605b9faa808cd96/sei/web/modulos/pesquisa"
TARGET_DIR="/home/runner/work/Manuais/Manuais/sei/web/modulos/MdSeiRestAi"

cd "$TARGET_DIR"

# Download main PHP files
curl -s -o MdPesqBuscaProtocoloExterno.php "$BASE_URL/MdPesqBuscaProtocoloExterno.php"
curl -s -o MdPesqConverteURI.php "$BASE_URL/MdPesqConverteURI.php"
curl -s -o MdPesqCriptografia.php "$BASE_URL/MdPesqCriptografia.php"
curl -s -o MdPesqPesquisaUtil.php "$BASE_URL/MdPesqPesquisaUtil.php"
curl -s -o MdPesqSolrUtilExterno.php "$BASE_URL/MdPesqSolrUtilExterno.php"
curl -s -o PesquisaIntegracao.php "$BASE_URL/PesquisaIntegracao.php"

# Download main PHP page files
curl -s -o md_pesq_ajuda_exibir_externo.php "$BASE_URL/md_pesq_ajuda_exibir_externo.php"
curl -s -o md_pesq_controlador_ajax_externo.php "$BASE_URL/md_pesq_controlador_ajax_externo.php"
curl -s -o md_pesq_documento_consulta_externa.php "$BASE_URL/md_pesq_documento_consulta_externa.php"
curl -s -o md_pesq_parametro_pesquisa_lista.php "$BASE_URL/md_pesq_parametro_pesquisa_lista.php"
curl -s -o md_pesq_processo_exibe_arquivo.php "$BASE_URL/md_pesq_processo_exibe_arquivo.php"
curl -s -o md_pesq_processo_exibir.php "$BASE_URL/md_pesq_processo_exibir.php"
curl -s -o md_pesq_processo_exibir_js.php "$BASE_URL/md_pesq_processo_exibir_js.php"
curl -s -o md_pesq_processo_pesquisar.php "$BASE_URL/md_pesq_processo_pesquisar.php"

# Download favicon
curl -s -o favicon.ico "$BASE_URL/favicon.ico"

echo "Downloaded main files successfully"