{

Exerc�cio: Escreva um algoritmo que armazene 100 valores num vetor e ordene-os crescentemente implementando o m�todo
selection sort.

Algoritmo Ordena_Selecionando;
Var
  i,j,indice_maior,maior: inteiro;
  v: vetor[1..100] de inteiro;

Inicio
  Exiba("Programa que armazena e ordena um vetor de 100 posi��es.');
  para i <- 1 ate 100 faca
    exiba('Digite o ',i,'� numero');
    leia(v[i]);
  fimpara;
  para i <- 1 ate 99 faca
    maior <- -32768;
    para j <- 1 ate (101-i) faca
      se(v{j] > maior)
        entao Inicio
                maior <- v[j];
                indice_maior <- j;
              Fim;
    fimpara;
    v[indice_maior] <- v[101-i];
    v[101-i] <- maior;
  fimpara;
  exiba("O vetor ordenado fica: ");
  para i <- 1 ate 100 faca
    exiba(i,"� elemento:",v[i]);
  fimpara;
Fim.

}

Program Ordena_Selecionando;
uses crt;
Var
  i,j,indice_maior,maior:integer;
  v: Array[1..5] of integer;
Begin
  ClrScr;
  WriteLn('Programa que armazena e ordena um vetor de 5 posi��es.');
  for i := 1 to 5 do
  Begin
    WriteLn('Digite o ',i,'� numero');
    Readln(v[i]);
  End;

  for i := 1 to 4 do
  Begin
    maior := -320000000;
    for j:= 1 to (6-i) do
    Begin
      if(v[j] > maior)
        then Begin
               maior := v[j];
               indice_maior := j;
            End;
    End;
    v[indice_maior] := v[6-i];
    v[6-i] := maior;
  End;
	writeln('');
	WriteLn('O vetor ordenado fica: ');
  for i := 1 to 5 do
  Begin
    writeln(i,'� elemento:',v[i]);
  End;
  Repeat Until KeyPressed;
End.