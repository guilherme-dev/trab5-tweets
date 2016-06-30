## Trabalho 5 - CI320
### Aluno: Guilherme Santos 
### GRR20124499

1. GEMFILE 
..* Para autenticação, utilizei a gem Devise [(github)](https://github.com/plataformatec/devise) e [breve tutorial](https://launchschool.com/blog/how-to-use-devise-in-rails-for-authentication). Utilizei a versão 3.5 para ser compatível com a versão do ruby na Litorina.
2. Aplicação
..* Criei uma aplicação simples para criação de posts de até 144 caracteres, chamada Tuiter. 
..1 Existem 2 tipos de usuários, Administrador e Usuário comum. 
....* É necessário estar logado para utilizar a aplicação.
....* Toda a parte de autenticação é feita pelo Devise, para controlar o acesso foi necessário exigir autenticação nos controllers.

