require_relative "../core/metodos.rb" # Informando para a automação o caminho onde se encontra a biblioteca com os métodos pré-definidos.

class Criar_curso
  # Incluindo as bibliotecas que vão ser utilizadas.
  include Capybara::DSL
  include Utilitarios

  # Método que captura as informações falsas e aleatórias e adiciona em uma variável
  # Podendo ser utilizada quantas vezes forem necessárias.
  def initialize
    @nome_curso = Faker::Educator.course_name
    @nome_curso_abreviado = Faker::Educator.subject
  end

  def login_admin(user, pass)
    preenche_campo("usuario", user)
    preenche_campo("senha", pass)
  end

  def abre_admin_site
    clica_elemento("btn_admin_site")
  end

  def add_novo_curso
    clica_elemento("aba_cursos")
    clica_elemento("add_novo_curso")
  end

  def preenche_dados_curso
    preenche_campo("nome_curso", @nome_curso)
    preenche_campo("nome_curso_abreviado", @nome_curso_abreviado)
  end

  def confirma_curso
    clica_elemento("btn_confirma_curso")
  end

  def valida_curso
    valida_texto_na_pagina(@nome_curso)
  end

  def valida_msg_campos_obrigatorios
    valida_texto_na_pagina("Missing full name")
    valida_texto_na_pagina("Missing short name")
  end
end
