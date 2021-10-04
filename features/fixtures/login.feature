#language: pt
@regressao
Funcionalidade: Desafio QA

    Contexto: Acessar site
        Dado que acesso o site "Moodle"

    @login1
    Cenário: Login com Sucesso (sem aceitar de lembrar dados de login)
        Quando insiro os dados de login e senha
        E clico no botão Entrar
        Então valido o nome do usuario na dashboard

    @login2
    Cenário: Login com Sucesso (aceitando de lembrar dados de login)
        Quando insiro os dados de login e senha
        E checo a opção de lembrar dados
        E clico no botão Entrar
        Então valido o nome do usuario na dashboard

    @login3
    Cenário: Login como Visitante
        Quando clico no botão Entrar como Visitante
        Então valido o texto "Você acessou como visitante"

    @login4
    Esquema do Cenário: Validação de campos obrigatórios
        Quando realizo a tentativa de fazer login com o(s) campo(s) <campo_condicao> 
        Então a mensagem é exibida <msg_erro>

            Exemplos:

                | campo_condicao  | msg_erro                                                       |
                | em branco       | "Nome de usuário ou senha errados. Por favor tente outra vez." |
                | email em branco | "Nome de usuário ou senha errados. Por favor tente outra vez." |
                | senha em branco | "Nome de usuário ou senha errados. Por favor tente outra vez." |