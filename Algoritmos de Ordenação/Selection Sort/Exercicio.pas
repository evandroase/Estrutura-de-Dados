{

Exercício: Escreva um algoritmo que armazene 100 valores num vetor e ordene-os crescentemente implementando o método
selection sort.

}

Program Ordena_Selecionando;
uses crt;
Var
  i,j,indice_maior,maior:integer;
  v: Array[1..5] of integer;
Begin
  ClrScr;
  WriteLn('Programa que armazena e ordena um vetor de 5 posições.');
  for i := 1 to 5 do
  Begin
    WriteLn('Digite o ',i,'º numero');
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
    writeln(i,'º elemento:',v[i]);
  End;
  Repeat Until KeyPressed;
End.