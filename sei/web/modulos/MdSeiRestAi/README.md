# Módulo SEI REST AI

Este módulo foi adaptado a partir do módulo de Pesquisa Pública do SEI para integração com funcionalidades REST e AI.

## Descrição do módulo

O módulo MdSeiRestAi permite integração REST + Inteligência Artificial (AI) com o Sistema Eletrônico de Informações (SEI). O módulo fornece APIs REST para consulta e manipulação de dados do SEI, além de funcionalidades de inteligência artificial para automatização de processos.

## Como instalar no SEI

### Requisitos

- SEI 4.1.5 ou superior instalado/atualizado
- PHP com extensão mcrypt
- Permissões de administrador no banco de dados do SEI e SIP

### Procedimentos para Instalação

1. **Backup dos bancos de dados**
   - Fazer backup dos bancos de dados do SEI e do SIP antes de prosseguir

2. **Copiar arquivos do módulo**
   - Copiar todo o conteúdo do diretório `sei/web/modulos/MdSeiRestAi` para `/sei/web/modulos/MdSeiRestAi` no servidor do SEI
   - Copiar os scripts do diretório `sei/scripts` para `/sei/scripts` no servidor do SEI
   - Copiar os scripts do diretório `sip/scripts` para `/sip/scripts` no servidor do SIP

3. **Configurar o módulo no SEI**
   - Editar o arquivo `/sei/config/ConfiguracaoSEI.php`
   - Adicionar a referência do módulo na array 'Modulos':

   ```php
   'SEI' => array(
       ...
       'Modulos' => array(
           'MdSeiRestAiIntegracao' => 'MdSeiRestAi',
       ),
   ),
   ```

4. **Executar scripts de banco**
   - Executar o script do SIP: `/sip/scripts/sip_atualizar_versao_modulo_pesquisa.php`
   - Executar o script do SEI: `/sei/scripts/sei_atualizar_versao_modulo_pesquisa.php`

   Exemplo de execução:
   ```bash
   /usr/bin/php -c /etc/php.ini /opt/sip/scripts/sip_atualizar_versao_modulo_pesquisa.php 2>&1 > atualizacao_restai_sip.log
   /usr/bin/php -c /etc/php.ini /opt/sei/scripts/sei_atualizar_versao_modulo_pesquisa.php 2>&1 > atualizacao_restai_sei.log
   ```

5. **Verificar instalação**
   - Acessar o menu **Infra > Módulos** no SEI para verificar se o módulo foi reconhecido
   - Verificar no menu **Infra > Parâmetros** se consta o parâmetro relacionado ao módulo

### Dependências

- php-mcrypt (biblioteca PHP necessária)
- Permissões adequadas para acesso aos bancos de dados

## Referência ao repositório de origem

Este módulo foi baseado no código-fonte disponível em: [jherberth07/mod-sei-rest-ai](https://github.com/jherberth07/mod-sei-rest-ai)

## Estrutura de diretórios resultante

```
sei/
├── web/
│   └── modulos/
│       └── MdSeiRestAi/
│           ├── bd/                    # Classes de acesso a banco de dados
│           ├── css/                   # Arquivos de estilo
│           ├── dto/                   # Data Transfer Objects
│           ├── favicon/              # Ícones do módulo
│           ├── imagens/              # Imagens utilizadas
│           ├── int/                   # Classes de integração
│           ├── rn/                    # Regras de negócio
│           ├── solr/                  # Configurações Solr
│           │   └── js/               # Scripts JavaScript
│           ├── svg/                   # Arquivos SVG
│           ├── *.php                 # Arquivos PHP principais
│           ├── md_*.php              # Controladores e páginas
│           ├── favicon.ico           # Ícone principal
│           ├── README.md             # Este arquivo
│           └── .gitignore            # Regras de exclusão Git
└── scripts/
    └── sei_atualizar_versao_modulo_pesquisa.php  # Script de atualização SEI

sip/
└── scripts/
    └── sip_atualizar_versao_modulo_pesquisa.php  # Script de atualização SIP
```

## Funcionalidades

- API REST para consulta de processos e documentos
- Integração com funcionalidades de AI para automatização
- Interface pública para pesquisa de processos
- Gerenciamento de parâmetros de configuração
- Integração com Apache Solr para indexação e busca

## Suporte

Para relatar problemas ou sugestões relacionadas a este módulo, acesse o repositório de origem: [jherberth07/mod-sei-rest-ai](https://github.com/jherberth07/mod-sei-rest-ai)