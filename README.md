# IN Secure Systems

Ambiente de teste de vulnerabilidades em aplicações web. Recomenda-se o uso em treinamentos de segurança.
O ambiente aborda algumas das principais ameaças à segurança de aplicações mencionados no relatório da OWASP.

## Pré requisitos
```
PHP 5+
MySql 5+
Docker compose
```

## Instalação

Clone o respositório do insecure e acesse a pasta `in-secure/docker` pelo terminal e rode o sequinte comando:

```
docker-compose up -d
```

Dentro da pasta existe um arquivo de importação do banco de dados `insecure.sql`. Para importar, basta acessar o endereço `http://localhost:8000` com as credenciais `user:test`, acessar o banco `insecure` e importar o script.

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

