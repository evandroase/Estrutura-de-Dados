{
    Exercício 1: Considerando o cadastro de uma agenda pessoal de nomes, telefones e cidades, defina a
		estrutura de registros apropriada e construa um algoritmo para armazenar 50 contatos nessa agenda.
		Após o armazenamento, exibir um relatório com os dados de todos os contatos que residem em Botucatu.


Algoritmo Cadastro_Contatos;
TIPO
  cad_contato = REGISTRO
                  nome: caracter;
                  telefone: inteiro;
                  cidade: caracter;
                FIM;
  vet_contato = VETOR[1..50] de cad_contato;
VAR
  contato: vet_contato;
  i,acumulador: inteiro;
INICIO
  acumulador <- 0;
  EXIBA("Cadastro de 50 contatos.");
  PARA i <- 1 ATE 50 FACA                                           // Armazenando os 50
    EXIBA("Digite o nome do ",i,"º contato:");                      // contatos.
    LEIA(contato[i].nome);
    EXIBA("Digite o telefone de ",contato[i].nome);
    LEIA(contato[i].telefone);
    ENQUANTO((contato[i].telefone < 10000000)OU(contato[i].telefone > 999999999))
      EXIBA("Digite um telefone valido: ");         // Só aceitar telefones com 8 ou 9
      LEIA(contato[i].telefone);                                    // digitos (fixo/celular).
    FIMENQUANTO;
    EXIBA("Digite a cidade de ",contato[i].nome);
    LEIA(contato[i].cidade);
  FIMPARA;
  PARA i <- 1 ATE 50 FACA
    SE((contato[i].cidade = "BOTUCATU") OU (contato[i].cidade = "botucatu") OU (contato[i].cidade = "Botucatu"))
      ENTAO INICIO
              EXIBA("NOME: ",contato[i].nome);
              EXIBA("TELEFONE: ",contato[i].telefone);
              EXIBA("CIDADE: Botucatu");
              acumulador <- acumulador + 1;
            FIM;
    FIMSE;
  FIMPARA;
  SE(acumulador = 0)
    ENTAO EXIBA('Nenhum contato é de Botucatu.');
  FIMSE;
  EXIBA('Fim do programa.');
FIM.

}

Program Cadastro_Contatos;
uses crt;
TYPE
  cad_contato = RECORD
                  nome: string;
                  telefone: integer;
                  cidade: string;
                End;
  vet_contato = ARRAY[1..50] of cad_contato;
VAR
  contato: vet_contato;
  acumulador,i: integer;
  
Begin
	clrscr;
  acumulador:= 0;
  writeln('Cadastro de 50 contatos.');
  for i := 1 to 2 do
  Begin
    writeln('Digite o nome do ',i,'º contato:');
    readln(contato[i].nome);
    writeln('Digite o telefone de ',contato[i].nome);
    readln(contato[i].telefone);
    while((contato[i].telefone < 10000000) or (contato[i].telefone > 999999999))do
    Begin
      writeln('Digite um telefone valido: ');
      readln(contato[i].telefone);
    End;
    writeln('Digite a cidade de ',contato[i].nome);
    readln(contato[i].cidade);
  ENd;
  for i := 1 to 2 do
    if((contato[i].cidade = 'BOTUCATU') or (contato[i].cidade = 'botucatu') or (contato[i].cidade = 'Botucatu'))
      then Begin
              writeln('');
              writeln('NOME: ',contato[i].nome);
              writeln('TELEFONE: ',contato[i].telefone);
              writeln('CIDADE: Botucatu');
              writeln('');
              acumulador := acumulador + 1;
           End;
  if(acumulador = 0)
    then writeln('Nenhum contato é de Botucatu');
  writeln('Fim do Programa.');
  repeat until keypressed;
End.