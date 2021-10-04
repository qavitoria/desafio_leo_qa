#language: pt
@regressao
Funcionalidade: Realizar a criação de um curso fake

    Contexto: Acessar site
        Dado que acesso o site "Moodle"
        E realizo o login com usuario "admin" e senha "sandbox"

    @curso1
    Cenário: Validar aba Cursos na sessão de Administração do site
        Quando clico na opção Administração do site
        Então valido a aba "Courses"

    @curso2
    Cenário: Validar campos obrigatórios na criação de curso
        Quando clico na opção Administração do site
        E adiciono um novo curso
        Então valido as mensagens de campos obrigatórios

    @curso3
    Cenário: Criação de curso fake
        Quando clico na opção Administração do site
        E adiciono um novo curso
        E preencho os campos obrigatórios
        E confirmo a criação do curso
        Então visualizo o curso criado