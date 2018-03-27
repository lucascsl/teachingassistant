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

Cen�rio: nenhuma auto-avalia��o discrepante
    GIVEN eu estou logado no sistema com o usu�rio �professor Paulo�
    AND eu estou na p�gina �avalia��es�
    AND eu vejo o aluno �Lucas� com os conceito �MPA�, �MA�, �MA�, �MA� e �MA�, e com a auto-avalia��o �MA�, �MA�, �MA�, �MA� e �MA� nas metas �a�, �b�, �c�, �d� e �e�
    AND eu vejo o aluno �Pedro� com os conceito �MPA�, �MPA�, �MPA�, �MPA� e �MPA�, e com a auto-avalia��o �MA�, �MA�, �MA�, �MA� e �MA� nas metas �a�, �b�, �c�, �d� e �e�
    AND eu vejo o aluno �Silvio� com os conceito �MA�, �MA�, �MA�, �MA� e �MA�, e com a auto-avalia��o �MPA�, �MPA�, �MPA�, �MPA� e �MPA� nas metas �a�, �b�, �c�, �d� e �e�WHEN eu seleciono a op��o �verificar avalia��es com vi�s prejudicial�
    THEN eu vejo a mensagem �nenhuma avalia��o com vi�s prejudicial�

Cen�rio: auto-avalia��o discrepante com vies prejudicial ao aluno
    GIVEN eu estou logado no sistema com o usu�rio �professor Paulo�
    AND eu estou na p�gina �avalia��es�
    AND eu vejo o aluno �Lucas� com os conceito �MPA�, �MPA�, �MPA�, �MA� e �MA�, e com a auto-avalia��o �MA�, �MA�, �MA�, �MA� e �MA� nas metas �a�, �b�, �c�, �d� e �e�
    AND eu vejo o aluno �Pedro� com os conceito �MPA�, �MPA�, �MPA�, �MPA� e �MPA�, e com a auto-avalia��o �MA�, �MA�, �MA�, �MA� e �MA� nas metas �a�, �b�, �c�, �d� e �e�
    AND eu vejo o aluno �Silvio� com os conceito �MA�, �MA�, �MA�, �MA� e �MA�, e com a auto-avalia��o �MPA�, �MPA�, �MPA�, �MPA� e �MPA� nas metas �a�, �b�, �c�, �d� e �e�
    WHEN eu seleciono a op��o �verificar avalia��es com vi�s prejudicial�
    THEN eu sou redirecionado para a p�gina �Avalia��es descrepantes�
    AND eu vejo a mensagem �1 aluno com auto avalia��o descrepante�
    AND eu vejo o aluno �Lucas� com �60% das avalia��es prejudiciais ao aluno�
