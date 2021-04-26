# IN Secure Systems

Ambiente de teste de vunerabilidades em aplicações web. O ambiente aborda algumas das principais ameaças à segurança de aplicações mencionados no relatório da OWASP.

## Pré requisitos
```
PHP 5+
MySql 5+
```

## Instalação

Baixe o in-secure e mova pasta toda para seu diretório de aplicações onde o php é executado (ex: www do apache).

Dentro da pasta existe um arquivo de importação do banco de dados `insecure.sql`, basta criar um banco com o mesmo nome e importar/executar o script no novo banco de dados.

Caso deseje mudar os dados de conexão, edite o arquivo `connection.php` na raíz da aplicação.


## Vulnerabilidades
* `Cross Site Scripting (XSS)` Ao clicar em uma notícia e utilizar os comentários. Armazenamento em 'Local Storage'.
* `Cross Site Request Forgery (CSRF)` Não faz validação de requições.
* `SQL Injection` Ao clicar na área restrita e fazer login, não faz tratamento dos inputs.
* `Exposição de dados Sensíveis` Armazena password em texto plano. Ao logar, acessar 'minha conta' e inspecionar elemento com firebug.
* `Validação apenas no cliente` Formulário com atributo readonly sem validação no lado do servidor.
* `Session Hijacking` Permite roubo de sessão uma vez que os cookies de sessão não são ´http_only´.



## ATENÇÃO 
```
NÃO UTILIZE as soluções abordadas nesse código em produção. 

O códgio POSSUI GRAVES VUNERABILIDADES, o que pode acarretar em prejuízos irreparáveis.

O código utilizado nessa aplicação serve apenas para fins didáticos, exemplificando como NÃO DEVE SER FEITO.
```

