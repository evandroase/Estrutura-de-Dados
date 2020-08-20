{

Exerc�cio 3: Tendo um registro contendo Matr�cula do Aluno (MA) do aluno, tipo de participa��o (A, B, C ou D) e
S�cio da SBC (S�sim ou N�n�o), desenvolver um algoritmo para calcular o valor que cada aluno vai pagar para
participar da semana de inform�tica, sabendo�se que:

Tipo de Participa��o:  Valor a Pagar:
A � 1 curso              R$  30,00
B � 2 cursos             R$  60,00
C � 3 cursos             R$  90,00
D � outros               R$  100,00

Para os  s�cios da SBC o valor a pagar ter� um desconto de 50%. O algoritmo dever� permitir a entrada de
v�rios registros (no m�ximo 1000) at� que uma condi��o de finaliza��o seja satisfeita. Calcular e exibir tamb�m
o total geral arrecadado com o evento e quantos alunos se matricularam em cada um dos tipos de participa��o.

}

Program Cadastro_Aluno;
uses crt;
Type
  cad_aluno = Record
                matricula: integer;
                participacao,socio: char;
              End;
Var
  aluno: cad_aluno;
  funcionamento: boolean;
  continuar: char;
  valor: real;
	
Begin
  clrscr;
  funcionamento := true;
	
  while(funcionamento = true)Do
  Begin
    valor := 0;
    writeln('Quanto voc� vai pagar na Semana de Inform�tica?');
	  writeln('');
    writeln('Digite a sua matricula:');
    readln(aluno.matricula);
    writeln('');
    writeln('Socio da SBC?:');
    readln(aluno.socio);                    
		while((aluno.socio <> 'S') and (aluno.socio <> 's') and (aluno.socio <> 'N') and (aluno.socio <> 'n'))do
    Begin
      writeln('Socio da SBC?');
      writeln('');
      writeln('Digite S ou s para socio');
      writeln('Digite N ou n para n�o socio.');
      readln(aluno.socio);  
    End;

    while(valor = 0)do
    Begin
      writeln('');
      writeln('Digite o tipo de participacao:');
      writeln('');
      writeln('A - 1 curso');
      writeln('B - 2 cursos');
      writeln('C - 3 cursos');
      writeln('D - outros cursos');
      readln(aluno.participacao);
      case(aluno.participacao)of
        'A': valor := 30;
        'B': valor := 60;
        'C': valor := 90;
        'D': valor := 100;
        else
             writeln('Opcao invalida');
			End;
    End;
		
    writeln('MA: ', aluno.matricula);
    writeln('Socio da SBC? ', aluno.socio);
    writeln('Preco da participacao: R$', valor:0:2);
    writeln('');
    writeln('Deseja calcular o preco de um novo participante?');
    writeln('S - Sim');
    writeln('N - Nao');
    readln(continuar);
		
  while((continuar <>'S') and (continuar <> 'N'))do
  Begin
    writeln('Digite S para sim ou N para nao.');
    readln(continuar);
  End;
	
  if(continuar = 'S')
    then funcionamento := true
    else funcionamento := false;
  End;

 Repeat Until KeyPressed;
End.