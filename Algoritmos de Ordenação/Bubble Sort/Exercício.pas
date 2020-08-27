{
	Exercício: Escreva um algoritmo que armazene 100 valores num vetor e ordene-os crescentemente implementando o
	método bubblesort.

Algoritmo Ordena_Bolha;
Var
  i,j,aux: inteiro;
  v: vetor[1..100] de inteiro;

Inicio

  Exiba("Programa que armazena e ordena 100 numeros");
  Para i <- 1 ate 100 faca                                   // Leitura do vetor.
    exiba("Digite o ",i,"º numero);
    leia(v[i]);
  fim para;
	
  para i <- 1 ate 99 faca                                    // No método da bolha são realiadas 100-1 iterações.
    para j <- 1 ate 99 faca
      se(v[j] > v[j+1])
        entao Inicio
                aux <- v[j];
                v[j] <- v[j+1];
                v[j+1] <- aux;
              Fim;
																													   // Exibindo o vetor ordenado.
  para i <- 1 ate 100 faca
    exiba(i,"º numero: ",v[i]);
  fim para; 
Fim.
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
    WriteLn('Digite o ',i,'º numero:');
    Readln(v[i]);
  End;

	for i:= 1 to 4 do                          // Ordenacao no método da bolha usa 5-1 iterações.
    for j:= 1 to 4 do
      if(v[j] > v[j+1])
        then Begin
               aux := v[j];
               v[j] := v[j+1];
               v[j+1] := aux;
             End;
						 
  writeln('O vetor ordenado fica: ');				 // Exibição do vetor ordenado. 
  for i := 1 to 5 do
  Begin
    writeln(i,'º numero:',v[i]);
  End;

  Repeat Until KeyPressed;
End.