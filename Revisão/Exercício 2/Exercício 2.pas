{
Exercício 2: Escreva um algoritmo que receba 100 números quaisquer e armazene-os em um vetor.
Calcular e exibir o maior número e o menor número.

Algoritmo Maior_Menor;
Var
  v: vetor[1..100] de real;
  i: inteiro;
  menor,maior: real;
Inicio
  exiba("Programa que avalia qual o maior e qual o menor entre 100 números.");
  para i <- 1 até 100 faca
    exiba("Digite o ",i,"º numero.");
    leia(v[i]);
    se(i = 1)
      entao inicio
              maior <- v[i];
              menor <- v[i];
            fim
      senao inicio
              se(v[i] > maior)
                entao maior <- v[i];
              fimse; 
              se(v[i] < menor)
                entao menor <- v[i];
              fimse;
            fim;
    fimse;
  fimpara;
  exiba("O maior numero é ",maior," e o menor é ", menor);
Fim.
}

Program Maior_Menor;
uses crt;
Var
  v: array[1..100] of real;
  i: integer;
  maior,menor: real;
Begin
  clrscr;
  writeln('Programa que avalia qual o maior e qual o menor entre 100 números.');
  for i := 1 to 10 do
  Begin
    writeln('Digite o ',i,'º numero.');
    readln(v[i]);
    if(i = 1)
      then Begin
              maior := v[i];
              menor := v[i];
           End
      else Begin
              if(v[i] > maior)
                then maior := v[i];
              if(v[i] < menor)
                then menor := v[i];
           End;
  End;
  WriteLn('O maior numero é ',maior:0:2,' e o menor é ', menor:0:2);
  Repeat Until KeyPressed;
End.