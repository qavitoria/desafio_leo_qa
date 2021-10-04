<h1 align="center">Desafio</h1>

## Instalação e Execução
Antes de iniciar a execução dos testes é necessário realizar o download de alguns componentes, tais como:

  - [VsCode](https://code.visualstudio.com/download) / [Ruby](https://rubyinstaller.org/downloads/).

Após instalar o VsCode e o Ruby, é fundamental que tenha o ChromeDriver e/ou GeckoDriver baixados e adicionados ao PATH do computador.

  - [chromedriver](https://chromedriver.chromium.org/downloads) / [geckodriver](https://github.com/mozilla/geckodriver/releases).

Artigo para configuração dos arquivos no PATH [link](https://pedrohjmartins.medium.com/como-configurar-chromedriver-no-windows-3bd079fcdbb4).

Depois de finalizar todas as instalações e configurações, abrir o projeto no VsCode em seguida abrir o console do mesmo e inserir o comando "gem install bundler", após finalizada a instalação inserir o comando "bundler install" para instalar todas as dependencias necessárias para executar o teste.

Após tudo configurado, para iniciar os testes automatizados utilizar o comando "cucumber" para rodar todos os testes, e/ou caso queira rodar os testes isolados utilizar o comando "cucumber -t @NomeDoCenario", lista de perfis e possíveis execução dos testes:

  - cucumber -t @NomeDoCenario -p chrome (Para executar o teste utilizando o Google Chrome).
  - cucumber -t @NomeDoCenario -p chrome_headless (Para executar o teste utilizando o Google Chrome em modo invisível)
  
  - cucumber -t @NomeDoCenario -p firefox (Para executar o teste utilizando o Mozilla Firefox).
  - cucumber -t @NomeDoCenario -p firefox_headless (Para executar o teste utilizando o Mozilla Firefox em modo invisível)

---

<h2>Arquivos e Diretórios</h2>

### Data

Contém ambientes, css e configurações de acesso.

  - ELM.yml - variáveis ​​com o css / id de cada campo do site.

---

### Data/Reports

Contém o relatório da última execução de teste.

---

### Features/fixtures

Contém os arquivos de cucumber, que serão usados ​​para criar os cenários.

---

### Features/step_definitions

Contém arquivos ruby, que serão usados ​​como "etapas" para cenários criados no cucumber.

---

### Features/support

  - Pages - Contém as classes de rubi que serão utilizadas nos testes.
  - Pages/cores - Contém métodos Capybara / RSPEC, facilitando a automatização.
  - env - Arquivo com as configurações do driver.
  - hooks - Arquivo que faz as parametrizações antes e depois de cada cenário de teste.

---

### Outros

Outros arquivos que estão no projeto, mas estão na pasta principal:

  - gitignore - Responsável por ignorar arquivos desnecessários ao enviar sua versão para o repositório.
  - cucumber.yml - Configurações de perfil de cucumber.
  - Gemfile - Gems usadas no projeto.

---
