{
	Exerc�cio: Escreva um algoritmo que armazene 100 valores num vetor e ordene-os crescentemente implementando o
	m�todo bubblesort.
}


Program Ordena_Bolha;
uses crt;
Var
  i,j,aux: Integer;
  v: Array[1..5] of Integer;
Begin
  ClrScr;
  WriteLn('Programa que armazena e ordena 5 numeros');
  for i:= 1 to 5 do                           // Leitura do vetor.
  Begin
    WriteLn('Digite o ',i,'� numero:');
    Readln(v[i]);
  End;

	for i:= 1 to 4 do                          // Ordenacao no m�todo da bolha usa 5-1 itera��es.
    for j:= 1 to 4 do
      if(v[j] > v[j+1])
        then Begin
               aux := v[j];
               v[j] := v[j+1];
               v[j+1] := aux;
             End;
  writeln('O vetor ordenado fica: ');				 
  for i := 1 to 5 do
  Begin
    writeln(i,'� numero:',v[i]);
  End;

  Repeat Until KeyPressed;
End.