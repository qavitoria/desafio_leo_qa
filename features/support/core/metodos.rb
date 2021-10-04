module Utilitarios
  include Capybara::DSL
  include RSpec::Matchers

  # Métodos pré-definidos utilizados para realizar ações na automação.

  def acessa_url(elm)
    visit(EL[elm])
  rescue StandardError => e
    raise "Nao foi possivel acessar a url: #{elm}"
  end

  def clica_elemento(elm)
    first(:xpath, EL[elm]).click
  rescue StandardError => e
    raise "Nao foi possivel encontrar o elemento: #{elm}"
  end

  def preenche_campo(elm, valor)
    first(:xpath, EL[elm]).set valor
  rescue StandardError => e
    raise "Nao foi possivel encontrar o elemento: #{elm}"
  end

  def confirma_checkbox(elm)
    first(:xpath, EL[elm]).check
  rescue StandardError => e
    raise "Nao foi possivel encontrar o elemento: #{elm}"
  end

  # Validadores

  def valida_elemento_na_pagina(elm)
    expect(page).to have_content elm
  rescue StandardError => e
    raise "Nao foi possivel encontrar o elemento: #{elm}"
  end

  def valida_texto_na_pagina(texto)
    expect(page).to have_text texto
  rescue StandardError => e
    raise "Nao foi possivel encontrar a texto: #{texto}"
  end
end
