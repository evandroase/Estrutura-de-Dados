{
	Exercício 1:  Escreva três algoritmos que recebam um número inteiro e exibam se esse número é primo ou
não. Cada algoritmo com uma técnica diferente: procedimento com passagem de parâmetros por
valor, procedimento com passagem de parâmetros por referência e por meio de função.

OBS: Números negativos também podem ser primos, logo deve-se tomar cuidado com a consistência de dados.

a) Procedimento com passagem de parâmetro por valor

Algoritmo Numero_Primo;
Var
  N: inteiro;
	
PROCEDIMENTO PRIMO(n:inteiro);
Var
  i,acumulador: inteiro;
	
INICIO
  SE(n < 0)
    ENTAO n <- -n;
  FIMSE;
  acumulador <- 0;
  PARA i <- 1 ATE n FACA
    SE(RESTO(n,i) = 0)
      ENTAO acumulador <- acumulador + 1;
    FIMSE;
  FIMPARA;
  SE(acumulador = 2)
    ENTAO EXIBA("O numero é primo.")
    SENAO EXIBA("O numero não é primo");
  FIMSE;
FIM;
	
INICIO
  EXIBA("Programa que avalia se um número é primo.");
  EXIBA("Digite um número:");
	LEIA(N);
  PRIMO(N);
  EXIBA("Digite qualquer tecla para sair.");
FIM.

}

Program Numero_Primo;
uses crt;
Var
  N: integer;

Procedure PRIMO(n:integer);
Var
  i,acumulador: integer;

Begin
  acumulador := 0;
	if(n < 0)
    then n := -n;
  for i := 1 to n do
    if(n mod i = 0)
      then acumulador := acumulador + 1;
  if(acumulador = 2)
    then writeln('O numero é primo.')
    else writeln('O numero não é primo.');
End;

Begin
	clrscr;
  writeln('Programa que avalia se um número é primo.');
  writeln('Digite um número:');
	readln(N);
  PRIMO(N);
  writeln('Digite qualquer tecla para sair.');
	repeat until keypressed;
End.