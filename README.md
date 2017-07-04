Exercício de programação 3 para a turma de OO do segundo semestre da UNB-FGA
Desenvolvido por: João Vitor Ramos de Souza e Lucas Gomes de Oliveira

# Wikiseries

Wikiseries é uma especie de wikipedia de series em que os usuarios podem visualizar series e edita-las, porem para conseguir realizar a ediçao de series o usuario deve estar cadastrado no site

# Classes

Diversas classes e diversos métodos foram criados. Explicar cada um é pouco intuitivo, já que a maioria são actions de controllers. O importante é entender a organização da estrutura do banco de dados.

![diagrama](/Documentos/exemplooo.png)


# Models

Não foi criado nenhum método especial para as models, foram utilizados os já disponíveis no ActiveRecord.

* Series: administradores, têm acesso a todo o sistema, podendo excluir séries.

* Users: Vendedores possuem um painel, através do qual poderão gerenciar os pedidos recebidos por sua loja.

# Controllers

* Home: Utilizada para o painel de controle do site. Apenas administradores podem excluir séries (Para isso deve ser selecionado o usuário que poderá ter essa função).
 - index: ordena as séries de forma aleatória;
 
* Series: Utilizada para as páginas principais do site e área de cadastro de séries e atualização dessas.
 - index: define o método de busca de séries por nome e gênero;
 - not_admin: verifica se o usuário não é um administrador;
 - not_user: verifica se o usuario nao possui nenhum tipo de cadastro ;
 - show: action para mostrar as series.
 - new: instancia uma nova serie;
 - edit: edita um usuário existente(não implementado);
 - create: cria novas series;
 - update: atualiza séries existentes;
 - destroy: deleta séries existentes;
 - set_series: seta a série pelo seu respectivo id;
 - series_params: define os parametros da série
 
 
* User: Utilizada para as páginas do painel do vendedor (login como vendedor obritatório).
 - index: utiliza o método User.all para listar todos usuários;
 - show: busca um usuário por seu respectivo id.
 - new: instancia uma nova serie;
 - edit: edita um usuário existente(não implementado);
 - create: cria  um novo usuário;
 - update: atualiza usuárioss existentes;
 - destroy: deleta usuárioss existentes;
 - set_users: seta a usuário pelo seu respectivo id;
 - users_params: define os parametros do usuário
 
 
# Devise - Controllers

Além das citadas acima, alguns métodos da gem devise foram sobrecarregados para adequação ao projeto.
* users/registrations_controller
* users/sessions_controller
* users/passwords_controller
 
# Rodando

Antes de iniciar, é necessário instalar a gem paperclip utilizada na adição das imagens das séries, pelo seguinte comando.

```sudo apt-get install imagemagick -y```

após isso rode o comando, para a instalação das gems utilizadas:
```bundle install```

Para rodar o programa:
-Para excluir dados do banco de dados
```
rake db:drop
```
-Para iniciar um novo banco de dados
```
rake db:setup
```
-Para realizar migrações caso faltem
```
rake db:migrate
```

# Utilizando

Crie um usuário normal
```
http://localhost:3000/users/sign_up
```

Crie uma série;

Para gerenciar tudo, crie uma conta de admin: (opcional)

```
http://localhost:3000/users/sign_up
```

porém com o adicional de setar pelo rails console o usuário desejado para ser administrador.

- Digite no terminal
``` rails c ```
- Caso o primeiro usuário seja o escolhido para ser o administrador
``` x = User.first ```
- Sete o usuário para ser o administrador
``` x.admin = true ```
- Salve as mudanças no banco de dados
``` x.save ```