Dado("que acesso o site {string}") do |url|
  @login.acessa_url(url)
end

Quando("insiro os dados de login e senha") do
  @login.login_valido
end

Quando("checo a opção de lembrar dados") do
  @login.checa_lembrar_login
end

Quando("clico no botão Entrar") do
  @login.entrar_conta
end

Quando("clico no botão Entrar como Visitante") do
  @login.entrar_visitante
end

Quando('realizo a tentativa de fazer login com o\(s) campo\(s) em branco') do
  @login.entrar_conta
end

Quando('realizo a tentativa de fazer login com o\(s) campo\(s) email em branco') do
  @login.usuario_branco
  @login.entrar_conta
end

Quando('realizo a tentativa de fazer login com o\(s) campo\(s) senha em branco') do
  @login.senha_branco
  @login.entrar_conta
end

Então("valido o texto {string}") do |txt|
  @login.valida_txt(txt)
end

Então("valido o nome do usuario na dashboard") do
  @login.valida_login_sucesso
end

Então("a mensagem é exibida {string}") do |txt|
  @login.valida_txt(txt)
end
