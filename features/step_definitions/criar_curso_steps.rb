Quando("realizo o login com usuario {string} e senha {string}") do |user, pass|
  @criar_curso.login_admin(user, pass)
  @login.entrar_conta
end

Quando("clico na opção Administração do site") do
  @criar_curso.abre_admin_site
end

Quando("adiciono um novo curso") do
  @criar_curso.add_novo_curso
end

Quando("preencho os campos obrigatórios") do
  @criar_curso.preenche_dados_curso
end

Quando("confirmo a criação do curso") do
  @criar_curso.confirma_curso
end

Então("visualizo o curso criado") do
  @criar_curso.valida_curso
end

Então("valido as mensagens de campos obrigatórios") do
  @criar_curso.confirma_curso
  @criar_curso.valida_msg_campos_obrigatorios
end

Então("valido a aba {string}") do |txt|
  @login.valida_txt(txt)
end
