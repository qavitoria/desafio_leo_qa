require_relative "../core/metodos.rb" # Informando para a automação o caminho onde se encontra a biblioteca com os métodos pré-definidos.

class Login
  # Incluindo as bibliotecas que vão ser utilizadas.
  include Capybara::DSL
  include Utilitarios 

  # Método que captura as informações e adiciona em uma variável
  # Podendo ser utilizada quantas vezes forem necessárias.
  def initialize
    @usuarios = ["admin", "manager", "teacher", "student"]
    @senha = "sandbox"
    @usuario_logado = @usuarios.sample # Escolhe um "usuario" aleatório dentro da listagem
  end

  def acessa_site(url)
    acessa_url(url)
  end

  def login_valido
    preenche_campo("usuario", @usuario_logado)
    preenche_campo("senha", @senha)
  end

  def usuario_branco
    preenche_campo("usuario", "")
    preenche_campo("senha", @senha)
  end

  def senha_branco
    preenche_campo("usuario", @usuario_logado)
    preenche_campo("senha", "")
  end

  def checa_lembrar_login
    confirma_checkbox("lembrar_login")
  end

  def entrar_conta
    clica_elemento("btn_entrar")
  end

  def entrar_visitante
    clica_elemento("btn_visitante")
  end

  def valida_txt(txt)
    valida_texto_na_pagina(txt)
  end

  def valida_login_sucesso
    valida_texto_na_pagina(@usuario_logado.capitalize)
  end
end
