{
	Exerc�cio: Escreva um algoritmo que armazene 100 valores num vetor e ordene-os crescentemente implementando o
	m�todo bubblesort.

Algoritmo Ordena_Bolha;
Var
  i,j,aux: inteiro;
  v: vetor[1..100] de inteiro;

Inicio

  Exiba("Programa que armazena e ordena 100 numeros");
  Para i <- 1 ate 100 faca                                   // Leitura do vetor.
    exiba("Digite o ",i,"� numero);
    leia(v[i]);
  fim para;
	
  para i <- 1 ate 99 faca                                    // No m�todo da bolha s�o realiadas 100-1 itera��es.
    para j <- 1 ate 99 faca
      se(v[j] > v[j+1])
        entao Inicio
                aux <- v[j];
                v[j] <- v[j+1];
                v[j+1] <- aux;
              Fim;
																													   // Exibindo o vetor ordenado.
  para i <- 1 ate 100 faca
    exiba(i,"� numero: ",v[i]);
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
						 
  writeln('O vetor ordenado fica: ');				 // Exibi��o do vetor ordenado. 
  for i := 1 to 5 do
  Begin
    writeln(i,'� numero:',v[i]);
  End;

  Repeat Until KeyPressed;
End.