{

Exercício 3: Tendo um registro contendo Matrícula do Aluno (MA) do aluno, tipo de participação (A, B, C ou D) e
Sócio da SBC (S­sim ou N­não), desenvolver um algoritmo para calcular o valor que cada aluno vai pagar para
participar da semana de informática, sabendo­se que:

Tipo de Participação:  Valor a Pagar:
A ­ 1 curso              R$  30,00
B ­ 2 cursos             R$  60,00
C ­ 3 cursos             R$  90,00
D ­ outros               R$  100,00

Para os  sócios da SBC o valor a pagar terá um desconto de 50%. O algoritmo deverá permitir a entrada de
vários registros (no máximo 1000) até que uma condição de finalização seja satisfeita. Calcular e exibir também
o total geral arrecadado com o evento e quantos alunos se matricularam em cada um dos tipos de participação.

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
    writeln('Quanto você vai pagar na Semana de Informática?');
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
      writeln('Digite N ou n para não socio.');
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