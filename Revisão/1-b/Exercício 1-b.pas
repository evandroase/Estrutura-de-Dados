{
	Exerc�cio 1:  Escreva tr�s algoritmos que recebam um n�mero inteiro e exibam se esse n�mero � primo ou
n�o. Cada algoritmo com uma t�cnica diferente: procedimento com passagem de par�metros por
valor, procedimento com passagem de par�metros por refer�ncia e por meio de fun��o.

OBS: N�meros negativos tamb�m podem ser primos, logo deve-se tomar cuidado com a consist�ncia de dados.

b) Procedimento com passagem de par�metro por refer�ncia

Algoritmo Numero_Primo;
Var
  N: inteiro;
  RESULTADO: caracter;

PROCEDIMENTO PRIMO(n:inteiro; Var resultado: caracter);
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
    ENTAO resultado <- "� primo";
    SENAO resultado <- "n�o � primo";
  FIMSE;
FIM;

INICIO
  EXIBA("Programa que avalia se um n�mero � primo.");
  EXIBA("Digite um n�mero:");
	LEIA(N);
  PRIMO(N,RESULTADO);
	EXIBA("O n�mero ", RESULTADO);
  EXIBA("Digite qualquer tecla para sair.");
FIM.

}

Program Numero_Primo;
uses crt;
Var
  N: integer;
	RESULTADO: string;
	
Procedure PRIMO(n:integer; Var resultado:string);
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
    then resultado:= '� primo'
    else resultado:= 'n�o � primo';
End;

Begin
  clrscr;
  writeln('Programa que avalia se um n�mero � primo.');
  writeln('Digite um n�mero:');
	readln(N);
  PRIMO(N,RESULTADO);
	writeln('O numero ',RESULTADO);
  writeln('Digite qualquer tecla para sair.');
  repeat until keypressed;
End.