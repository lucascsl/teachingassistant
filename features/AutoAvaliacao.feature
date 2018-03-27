Feature: auto-avaliação
Como um aluno de uma disciplina
Eu quero poder atribuir um conceito a cada uma das metas de avaliação, e então visualizar qual o conceito foi dado pelo professor em cada uma dessas metas

Cenário: auto-avaliação válida (GUI)
    GIVEN eu estou logado no sistema com o usuário “aluno Lucas”
    AND eu estou na página “auto-avaliação”
    AND eu vejo as metas “Entender conceitos de requisitos”  e “Especificar requisitos com qualidade”
    WHEN eu preencho a meta “Entender conceitos de requisitos” com o conceito “MA”
    AND eu preencho a meta “Especificar requisitos com qualidade” com o conceito “MPA”
    AND eu seleciono a opção “confirmar auto-avaliação”
    THEN eu vejo uma mensagem de confirmação

Cenário: auto-avaliação válida (controlador) 
    GIVEN ainda não foi feita uma auto-avaliação nas metas “Entender conceitos de requisitos”  e “Especificar requisitos com qualidade”
    WHEN eu faço a avaliação na meta “Entender conceitos de requisitos”  com o conceito “MA”
    AND eu faço a avaliação na meta “Especificar requisitos com qualidade” com o concetio “MPA”
    THEN a auto-avaliação e armazenada no sistema

Cenário: auto-avaliação inválida (GUI)
    GIVEN eu estou logado no sistema com o usuário “aluno Lucas”
    AND eu estou na página “auto-avaliação”
    AND eu vejo as metas “Entender conceitos de requisitos”  e “Especificar requisitos com qualidade”
    WHEN eu preencho a meta “Entender conceitos de requisitos” com o conceito “MA”
    AND eu seleciono a opção “confirmar auto-avaliação”
    THEN eu vejo uma mensagem “meta ainda não avaliada” sobre a meta “Especificar requisitos com qualidade”

Cenário: auto-avaliação inválida (controlador) 
    GIVEN ainda não foi feita uma auto-avaliação nas metas “Entender conceitos de requisitos”  e “Especificar requisitos com qualidade”
    WHEN eu faço a avaliação na meta “Entender conceitos de requisitos”  com o conceito “MA”
    THEN a auto-avaliação não é armazenada no sistema

Cenário: nenhuma auto-avaliação discrepante
    GIVEN eu estou logado no sistema com o usuário “professor Paulo”
    AND eu estou na página “avaliações”
    AND eu vejo o aluno “Lucas” com os conceito “MPA”, “MA”, “MA”, “MA” e “MA”, e com a auto-avaliação “MA”, “MA”, “MA”, “MA” e “MA” nas metas “a”, “b”, “c”, “d” e “e”
    AND eu vejo o aluno “Pedro” com os conceito “MPA”, “MPA”, “MPA”, “MPA” e “MPA”, e com a auto-avaliação “MA”, “MA”, “MA”, “MA” e “MA” nas metas “a”, “b”, “c”, “d” e “e”
    AND eu vejo o aluno “Silvio” com os conceito “MA”, “MA”, “MA”, “MA” e “MA”, e com a auto-avaliação “MPA”, “MPA”, “MPA”, “MPA” e “MPA” nas metas “a”, “b”, “c”, “d” e “e”WHEN eu seleciono a opção “verificar avaliações com viés prejudicial”
    THEN eu vejo a mensagem “nenhuma avaliação com viés prejudicial”

Cenário: auto-avaliação discrepante com vies prejudicial ao aluno
    GIVEN eu estou logado no sistema com o usuário “professor Paulo”
    AND eu estou na página “avaliações”
    AND eu vejo o aluno “Lucas” com os conceito “MPA”, “MPA”, “MPA”, “MA” e “MA”, e com a auto-avaliação “MA”, “MA”, “MA”, “MA” e “MA” nas metas “a”, “b”, “c”, “d” e “e”
    AND eu vejo o aluno “Pedro” com os conceito “MPA”, “MPA”, “MPA”, “MPA” e “MPA”, e com a auto-avaliação “MA”, “MA”, “MA”, “MA” e “MA” nas metas “a”, “b”, “c”, “d” e “e”
    AND eu vejo o aluno “Silvio” com os conceito “MA”, “MA”, “MA”, “MA” e “MA”, e com a auto-avaliação “MPA”, “MPA”, “MPA”, “MPA” e “MPA” nas metas “a”, “b”, “c”, “d” e “e”
    WHEN eu seleciono a opção “verificar avaliações com viés prejudicial”
    THEN eu sou redirecionado para a página “Avaliações descrepantes”
    AND eu vejo a mensagem “1 aluno com auto avaliação descrepante”
    AND eu vejo o aluno “Lucas” com “60% das avaliações prejudiciais ao aluno”
