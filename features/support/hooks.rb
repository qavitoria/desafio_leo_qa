# Configuração executada antes de realizar a automação
# Instanciando classes e fazendo configurações do navegador.
Before do
  @login = Login.new
  @criar_curso = Criar_curso.new

  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.window.maximize
end

# Configuração para tirar prints ao finalizar a execução do testes, com sucesso e falha.
# Caso der erro na hora de executar, verificar se pasta "report" está criada dentro da pasta "data"
After do |scenario|
  Dir.mkdir("data") unless Dir.exist?("data")
  Dir.mkdir("data/report") unless Dir.exist?("data/report")
  sufix = ("error" if scenario.failed?) || "success"
  name = scenario.name.tr(" ", "_").downcase
  image_name = "data/report/img/#{sufix}-#{name}.png"
  temp_shot = page.save_screenshot(image_name)
  file_shot = File.open(temp_shot, "rb").read
  final_shot = Base64.encode64(file_shot)
  attach(temp_shot, "image/png")
end
