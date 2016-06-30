## Trabalho 5 - CI320
### Aluno: Guilherme Santos 
### GRR20124499

1. GEMFILE
	* Para autenticação, utilizei a gem Devise [(github)](https://github.com/plataformatec/devise) e [breve tutorial](https://launchschool.com/blog/how-to-use-devise-in-rails-for-authentication). Utilizei a versão 3.5 para ser compatível com a versão do ruby na Litorina.
2. Autenticação
	* Criei uma aplicação simples para criação de posts de até 144 caracteres, chamada Tuiter. 
	* Existem 2 tipos de usuários, Administrador e Usuário comum. 
		* É necessário estar logado para utilizar a aplicação.
		* Toda a parte de autenticação é feita pelo Devise, para controlar o acesso foi necessário exigir autenticação nos controllers.
		* Administrador e Usuário utilizam o mesmo model, User, diferenciados pela flag Admin na tabela. É necessário realizar essa modificação manualmente no banco de dados (ou pelo console do rails, 'rails c').
		* Apenas Administrador pode criar Tags. De resto Administrador e Usuário tem as mesmas permissões.
		* Devise proporciona alguns helpers como 'current_user', 'user_signed_in', que foram os mais utilizados no trabalho.
3. Associações
	* 1 x 1 -> User x Bio
		* Cada usuário possui um registro sobre suas informações de perfil (nome, cidade etc).
	* 1 x n -> User x Post
		* Um usuário escreve vários posts e cada post é feito por apenas 1 usuário.
	* n x n -> Post x Tag
		* Um post tem várias tags e cada tag está presente em vários posts.
4. Informações adicionais:
	* Página inicial da aplicação é /posts (posts#index).
	* O controller bios_controller possui algumas regras para exibições de views. Como cada usuário só pode ter 1 registro sobre seu perfil, ao acessar o link "Perfil" (bios#perfil) é verificado se ele já possui uma Bio (biografia? devia ter chamado de About). Se ele já possui, é direcionado para /bios/:id/show. 
	* Utilizei o framework Bootstrap (inseri manualmente no views/layouts/application.html.erb) para facilitar no posicionamento dos elementos. O css que criei está em assets/stylesheets/application.css
	* Não tive muitas ideias para javascript, então só coloquei um básico para fazer a alteração do link ativo no menu de navegação, o código está em views/layouts/application.html.erb
