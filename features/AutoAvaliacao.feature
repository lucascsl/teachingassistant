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
    THEN ???