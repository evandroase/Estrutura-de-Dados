{
	Exercício
Escreva um algoritmo que exiba um menu para o usuário com as opções: Tamanho do Vetor, Armazenar Valores,
Ordenar Valores, Tipo de Pesquisa, Pesquisar e Sair; e implemente essas funcionalidades.

}

Program Pesquisa_com_Menu;
uses crt;
Var
  menu,pesq: char;
  tamanhoVetor: Integer;
  v: array[1..1000] of integer;

Procedure exibaMenu(Var menuParametro: char);           // 0 - Menu
Begin
  writeln('Programa que armazena, ordena e pesquisa valores em um vetor.');
  writeln('1 - Insira o tamanho do vetor.');
  writeln('2 - Armazene valores no vetor.');
  writeln('3 - Ordenar o vetor.');
  writeln('4 - Insira o tipo de pesquisa.');
  writeln('5 - Pesquisar.');
  writeln('6 - Sair do Programa.');
  readln(menuParametro);
  ClrScr;
End;

Procedure tamanho(Var tamanhoVetorParam: integer);     // 1 - Tamanho do vetor
Begin
  writeln('Digite o tamanho do vetor:');
  readln(tamanhoVetorParam);
  writeln('Tamanho do vetor: ',tamanhoVetorParam);
  writeln('');
End;

Procedure armazena(tamanhoVetor: Integer);            // 2 - Armazenamento de valores no vetor
Var
  i: Integer;
Begin
  for i:= 1 to tamanhoVetor do
  Begin
    writeln('Digite  o ',i,'º número.');
    Readln(v[i]);
  End;
  writeln('');
  writeln('Exibindo o vetor digitado:');
  for i:= 1 to tamanhoVetor do
  Begin
    write(v[i]);
    if(i <> tamanhoVetor)
      then write(',');
  End;
  writeln('');
  writeln('');
End;

Procedure ordenaVetor(a:char);           // 3 - Ordenando o vetor.
Var                                      // Passei qualquer coisa de parâmetro só pra tirar do programa principal.
  i,j,aux: integer;
	
Begin
  for i := 2 to tamanhoVetor do
  Begin
    aux :=  v[i];
    j := i;
    while((j > 1) and (V[j-1] > aux))do
    Begin
      v[j] := v[j-1];
      j := j -1;
    End;
    V[j] := aux;
  End;
  writeln('Vetor ordenado:');
  for i:= 1 to tamanhoVetor do      // Exibindo o vetor ordenado.
  Begin
    write(v[i]);
    if(i <> tamanhoVetor)
      then write(', ');
  End;
  writeln('');
  writeln('');
End;

Procedure tipoPesquisa(Var tipoPesquisa: char);  // 4 - Tipo de pesquisa.
Begin
  writeln('');
  writeln('Escolha do tipo de pesquisa:');
  writeln('1 - Pesquisa Sequencial');
  writeln('2 - Pesquisa Binária');
  readln(tipoPesquisa);
  case(tipoPesquisa)of
    '1': writeln('Você escolheu a Pesquisa Sequencial.');
    '2': writeln('Você escolheu a Pesquisa Binária.');
    else Begin
           tipoPesquisa := '1';
           writeln('Você não escolheu o tipo de pesquisa. Escolha padrão = Pesquisa Sequencial');
         End;
  end;
End;

Procedure pesquisaBinaria(a: char);     // 5(2) - Pesquisa binária
Var
  i, Pesq, esq, dir,meio : integer;
  achou : boolean;
  resp : string;
Begin
  resp := 'S';
  while(resp <> 'N')do
  Begin
    writeln('Digite o valor da pesquisa: ');
    readln(Pesq);
    esq := 1;
    dir := tamanhoVetor;
    achou := False;
    while((not achou) and (esq <= dir))do
    Begin
      meio := (esq + dir) div 2;
      if(Pesq = v[meio])
        then achou := True
        else if(Pesq > v[meio])
               then esq:=meio + 1
               else dir:=meio - 1;
    End;

    if (achou = True)
      then writeln(Pesq, ' foi localizado na posição: ', meio )
      else writeln (Pesq, ' não foi localizado!');

    writeln('Continuar pesquisando? (S/N) : ');
    readln(resp);
    ClrScr;
  End;
End;

Procedure pesquisaSequencial(pesquisa: char);    // 5(1) - Pesquisa Sequencial
Var
  i,Pesq: Integer;
Begin
  Repeat
    writeln('Digite o valor da pesquisa: ');
    readln(Pesq);
    i := 1;
    while(i <= tamanhoVetor)do
    Begin
      if(Pesq = v[i])
        then Begin
               writeln(Pesq, ' foi localiz. pos.', i );
               i := tamanhoVetor + 1;
             End;
      i := i + 1;
    End;
    if (i = tamanhoVetor + 1)
      then writeln (Pesq, ' não foi localiz.!');
    writeln('Deseja continuar pesquisando? (S/N)');
    readln(pesquisa);
    ClrScr;
  Until pesquisa = 'N';
End;


Begin                                  // Programa principal.
  ClrScr;
  Repeat
    exibaMenu(menu);
    case(menu)of
      '1': tamanho(tamanhoVetor);
      '2': armazena(tamanhoVetor);
      '3': ordenaVetor(menu);         // Passei qualquer coisa de parâmetro.
      '4': tipoPesquisa(pesq);
      '5': if(pesq = '2')
             then pesquisaBinaria(pesq)
             else pesquisaSequencial(pesq);
      '6': writeln('Saindo do Programa.');
      else writeln('Opção inexistente. Digite um valor entre 1 e 6.');
    End;
    writeln('');
  Until (menu = '6');
  Repeat Until KeyPressed;
End.
