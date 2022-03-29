# #language: pt
# # Funcionalidade: Login com Sucesso
# # Cenario: Login com sucesso
# # Dado que loguei
# # Quando eu Logar
# # Entao Logaremos


# # Funcionalidade: Nome da Funcionalidade
# # Para (Função do software)
# # O (Pessia que irá utilizar o software)
# # Quer ou Deseja (Necessidade a ser suprida com esse software)

# # Cenario: Situação
# # Dado Estado Inicial
# # Quando Ação Realizada
# # Entao Resultado Esperado


# Funcionalidade: Sistema de login
# Para ter acesso ao sistema
# O usuario do Linkedin
# Deseja logar no site

# Cenario: Login com sucesso
# Dado que o usuario queira se logar
# Quando ele digitar as credenciais validas
# Entao deve acessar o site com sucesso


# Cenario: Login com perda de conexao
# Dado que o usuario queira se logar
# E ele perca a conexao com a internet
# Quando ele digitar as credenciais validas
# Entao aviso sobre a falta de conexao deve aparecer


# Cenario: Login com perda de conexao
# Dado que o usuario queira se logar
# Quando ele digitar as credenciais validas
# E perder a conexao com a internet nesse momento
# Entao aviso sobre a falta de conexao deve aparecer
# E ele nao ira logar

# Cenario: Troca de senha
# Dado que o usuario esqueceu sua senha
# E ele queira trocar sua senha antiga
# E ele ainda tem acesso ao email cadastrado
# Quando ele escolher uma nova senha
# E confirmar a troca pelo email cadastrado
# Entao sua senha deve ser trocada com sucesso


# # Outra funcionalidade
# Funcionalidade: Busca de Empresa
# Para pesquisar por empresas cadastradas
# O usuario Premium do Linkedin
# Deseja encontrar empresas cadastradas

# Cenario: Procurar por uma pequena empresa
# Dado que o usuario esteja logado
# Quando ele pesquisar pelo CNPJ tipo MEI
# Entao as informacoes da empresa serao exibidas

# Cenario: Procurar por uma grande empresa
# Dado que o usuario esteja logado
# Quando ele pesquisar pelo CNPJ tipo SA
# Entao as informacoes da empresa serao exibidas

# Cenario: Procurar por uma filial
# Dado que o usuario esteja logado
# Quando ele pesquisar pelo CNPJ da filial
# Entao as informacoes da empresa serao exibidas



# # Outra funcionalidade para diminuir a redundancia
# Funcionalidade: Busca de Empresa
# Para pesquisar por empresas cadastradas
# O usuario Premium do Linkedin
# Deseja encontrar empresas cadastradas

# Contexto:
# Dado que o usuario esteja logado

# Cenario: Procurar por uma pequena empresa
# Quando ele pesquisar pelo CNPJ tipo MEI
# Entao as informacoes da empresa serao exibidas

# Cenario: Procurar por uma grande empresa
# Quando ele pesquisar pelo CNPJ tipo SA
# Entao as informacoes da empresa serao exibidas

# Cenario: Procurar por uma filial
# Quando ele pesquisar pelo CNPJ da filial
# Entao as informacoes da empresa serao exibidas

# # Esquema do Cenario com multiplos cenarios
# Esquema do Cenario: Procurar por empresas de video game
# Dado que o usuario procure por empresa de video game
# Quando ele pesquisar pela empresa  "<Empresa>"
# Entao as informacoes de seu console "<Produto>" serao exibidas

# Exemplos:
# | Empresa   | Produto      |
# | Nintendo  | Switch       |
# | Sony      | Plastation 5 |
# | Microsoft | Xbox Series  |


# # boas particas
# # errado : escrever errado ou no gerundio ou girias ou escrever o bdd como test Case
# # certo : não usar mts "E" claro e objetivo (Bdd escrever o comportamento e não teste de funcionalidade ou escrever algo técnico)

# #Cucumber evitar caracter especial escrever passas iguais (umbigos step defincition)
# # utilizar o "contexto" ou "esquema de cenario"
# # cuidado com o --guess ele vai procurar o cenario que seja mais proximo da escrita.
# # tags um cenario ou uma lista de cenarios @  comando: cucumber -t nome_da_tag e será executado apenas esse cenario pelo framework
#language: pt
Funcionalidade: Sistema de login
Para ter acesso ao sistema
O usuario do Linkedin
Deseja logar no site

Cenario: Login com sucesso
Dado que o usuario queira logar
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso


@cenario
Cenario: Login sem digitar senha
Dado que o usuario tente logar sem senha
Quando ele digitar as credenciais invalidas
Entao uma mensagem informado o erro deve aparecer


Cenario: Login em branco
Dado que o usuario deixa o login em branco
Quando ele não digitar as credenciais validas
Entao uma mensagem informa o erro



