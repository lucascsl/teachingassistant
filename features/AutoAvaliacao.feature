Feature: auto-avalia��o
Como um aluno de uma disciplina
Eu quero poder atribuir um conceito a cada uma das metas de avalia��o, e ent�o visualizar qual o conceito foi dado pelo professor em cada uma dessas metas

Cen�rio: auto-avalia��o v�lida (GUI)
    GIVEN eu estou logado no sistema com o usu�rio �aluno Lucas�
    AND eu estou na p�gina �auto-avalia��o�
    AND eu vejo as metas �Entender conceitos de requisitos�  e �Especificar requisitos com qualidade�
    WHEN eu preencho a meta �Entender conceitos de requisitos� com o conceito �MA�
    AND eu preencho a meta �Especificar requisitos com qualidade� com o conceito �MPA�
    AND eu seleciono a op��o �confirmar auto-avalia��o�
    THEN eu vejo uma mensagem de confirma��o

Cen�rio: auto-avalia��o v�lida (controlador) 
    GIVEN ainda n�o foi feita uma auto-avalia��o nas metas �Entender conceitos de requisitos�  e �Especificar requisitos com qualidade�
    WHEN eu fa�o a avalia��o na meta �Entender conceitos de requisitos�  com o conceito �MA�
    AND eu fa�o a avalia��o na meta �Especificar requisitos com qualidade� com o concetio �MPA�
    THEN a auto-avalia��o e armazenada no sistema

Cen�rio: auto-avalia��o inv�lida (GUI)
    GIVEN eu estou logado no sistema com o usu�rio �aluno Lucas�
    AND eu estou na p�gina �auto-avalia��o�
    AND eu vejo as metas �Entender conceitos de requisitos�  e �Especificar requisitos com qualidade�
    WHEN eu preencho a meta �Entender conceitos de requisitos� com o conceito �MA�
    AND eu seleciono a op��o �confirmar auto-avalia��o�
    THEN eu vejo uma mensagem �meta ainda n�o avaliada� sobre a meta �Especificar requisitos com qualidade�

Cen�rio: auto-avalia��o inv�lida (controlador) 
    GIVEN ainda n�o foi feita uma auto-avalia��o nas metas �Entender conceitos de requisitos�  e �Especificar requisitos com qualidade�
    WHEN eu fa�o a avalia��o na meta �Entender conceitos de requisitos�  com o conceito �MA�
    THEN a auto-avalia��o n�o � armazenada no sistema
    THEN ???