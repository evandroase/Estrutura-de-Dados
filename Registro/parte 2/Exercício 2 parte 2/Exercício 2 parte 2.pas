{
Exercício 2:  Considerando o cadastro de uma agenda de prestadores de serviços contendo nome, código
de área, telefone e cidade, defina a estrutura de registros apropriada e construa um algoritmo
para armazenar 80 contatos nessa agenda. Após o armazenamento, exibir um relatório com os
dados de todos os prestadores de serviço de uma determinada área de telefone. Essa informação
deve ser solicitada para o usuário. Obs: o código de área deve ser um campo separado do
número do telefone (para possibilitar a consulta prevista no algoritmo).


Algoritmo agenda_prestadores;
TIPO
  cad_prestadores = REGISTRO
                      nome: caracter;
                      codarea: inteiro;
                      telefone: inteiro;
                      cidade: caracter;
                    FIM;
  vet_prestadores = VETOR[1..80] de cad_prestadores;
VAR
  prestador: vet_prestadores;
  funcionamento: caracter;
PROCEDIMENTO CADASTRO(a: caracter);             // PROCEDIMENTO para cadastro dos prestadores.
VAR
  i: inteiro;
INICIO
  PARA i <- 1 ATE 80 FACA
    EXIBA("Digite o nome do ",i,"º prestador:");
    LEIA(prestador[i].nome);
    EXIBA("Digite o codigo de area de ",prestador[i].nome);
    LEIA(prestador[i].codarea);
    ENQUANTO((prestador[i].codarea < 10) OU (prestador[i].codarea > 99))FACA
      EXIBA("Digite um codigo de area valido:);
      LEIA(prestador[i].codarea);
    FIMENQUANTO;
    EXIBA("Digite o telefone de ",prestador[i].nome);
    LEIA(prestador[i].telefone);
    ENQUANTO((prestador[i].telefone < 10000000) OU (prestador[i].telefone > 999999999))FACA
      EXIBA("Digite um telefone valido:);
      LEIA(prestador[i].telefone);
    FIMENQUANTO;
    EXIBA("Digite a cidade de ",prestador[i].nome);
    LEIA(prestador[i].cidade);
  FIMPARA;
FIM;
PROCEDIMENTO BUSCACODIGOAREA(a:caracter);       // PROCEDIMENTO para a busca de prestadores.
VAR
  i,codigoarea,acumulador: inteiro;
INICIO
  acumulador <- 0;
  EXIBA("Digite um codigo de area para buscar os prestadores:");
  LEIA(codigoarea);
  ENQUANTO((codigoarea < 10) OU (codigoarea > 99))FACA
    EXIBA("Digite um codigo de area valido:);
    LEIA(codigoarea);
  FIMENQUANTO;
  PARA i <- 1 ATE 80 FACA
    SE(prestador[i] = codigoarea)
      ENTAO INICIO
              EXIBA("NOME: ",prestador[i].nome);
              EXIBA("TELEFONE: (",prestador[i].codarea,") ", prestador[i].telefone);
              EXIBA("CIDADE: ",prestador[i].cidade);
              acumulador <- acumulador + 1;
            FIM;
    FIMSE;
    SE(acumulador = 0)
      ENTAO EXIBA("Nenhum prestador na área escolhida.");
    FIMSE;
  FIMPARA;
FIM;
INICIO                                                        // MAIN
  EXIBA("Programa de cadastro de prestadores de serviço.");
  funcionamento <- "S";
  CADASTRO(funcionamento);
  ENQUANTO((funcionamento = "S") OU (funcionamento = "s"))1
    BUSCACODIGOAREA(funcionamento);
    EXIBA("Deseja fazer uma nova pesquisa?");
    EXIBA("Digite S ou s para nova busca");
    LEIA(funcionamento);
  FIMENQUANTO;
  EXIBA("Fim do Programa.");
FIM.

}

Program agenda_prestadores;
uses crt;
TYPE
  cad_prestadores = RECORD
                      nome: string;
                      codarea: integer;
                      telefone: integer;
                      cidade: string;
                    End;
  vet_prestadores = ARRAY[1..80] of cad_prestadores;
VAR
  prestador: vet_prestadores;
  funcionamento: string;
PROCEDURE CADASTRO(a: string);
VAR
  i: integer;
Begin
  for i := 1 to 2 do
  Begin
    writeln('Digite o nome do ',i,'º prestador:');
    readln(prestador[i].nome);
    writeln('Digite o codigo de area de ',prestador[i].nome);
    readln(prestador[i].codarea);
    while((prestador[i].codarea < 10) or (prestador[i].codarea > 99))do
    Begin
      writeln('Digite um codigo de area valido:');
      readln(prestador[i].codarea);
    End;
    writeln('Digite o telefone de ',prestador[i].nome);
    readln(prestador[i].telefone);
    while((prestador[i].telefone < 10000000) or (prestador[i].telefone > 999999999))do
    Begin
      writeln('Digite um telefone valido:');
      readln(prestador[i].telefone);
    End;
    writeln('Digite a cidade de ',prestador[i].nome);
    readln(prestador[i].cidade);
  End;
End;

PROCEDURE BUSCACODIGOAREA(a:string);
VAR
  i,codigoarea,acumulador: integer;
Begin
  acumulador := 0;
  writeln('Digite um codigo de area para buscar os prestadores:');
  readln(codigoarea);
  while((codigoarea < 10) or (codigoarea > 99))do
  Begin
    writeln('Digite um codigo de area valido:');
    readln(codigoarea);
  End;
  for i := 1 to 2 do
  Begin
    if(prestador[i].codarea = codigoarea)
      then Begin
              writeln('NOME: ',prestador[i].nome);
              writeln('TELEFONE: (',prestador[i].codarea,') ', prestador[i].telefone);
              writeln('CIDADE: ',prestador[i].cidade);
              acumulador := acumulador + 1;
           End;
    if(acumulador = 0)
      then writeln('Nenhum prestador na área escolhida.');
    writeln('');
  End;

End;

Begin                                                        // MAIN
  clrscr;
  writeln('Programa de cadastro de prestadores de serviço.');
  funcionamento := 'S';
  CADASTRO(funcionamento);
  while((funcionamento = 'S') or (funcionamento = 's'))do
  Begin
    BUSCACODIGOAREA(funcionamento);
    writeln('Deseja fazer uma nova pesquisa?');
    writeln('Digite S ou s para nova busca');
    readln(funcionamento);
  End;
  writeln('Fim do Programa.');
  repeat until keypressed;
End.


