{
Exercício 1:  Escreva um algoritmo para manipular a ocorrência de um único aluno e suas 4 notas
bimestrais. Receba os dados do usuário e exiba o boletim conforme o último layout apresentado.

Algoritmo Boletim_Aluno;
TIPO
  bimestre = VETOR[1..4] de real;             
  cad_aluno = REGISTRO                      
                nome: caracter;
                nota: bimestre;
                media: real;
              FIM;
VAR
  soma: real;
  i: inteiro;
  aluno: cad_aluno;                                             // Variável de registro do aluno que 
INICIO                                                          // recebe as 4 notas bimestrais, nome e média.
  EXIBA("Programa que exibe a média e as notas de um aluno.");
  EXIBA("Digite o nome do aluno:");
  LEIA(aluno.nome);
  soma <-0;
  PARA i <- 1 ATE 4 FACA                                         //Leitura das 4 notas.
    EXIBA("Digite a ",i,"ª nota:");
    LEIA(aluno.nota[i]);                       
    ENQUANTO((aluno.nota[i] < 0) OU (aluno.nota[i] > 10))FACA    // Se nota for negativa ou maior que 10 o programa
      EXIBA("Digite uma nota entre 0 e 10.");                    // exige uma nota válida.
      LEIA(aluno.nota[i]);
    FIMENQUANTO;
    soma <- soma + aluno.nota[i];                                // Soma das 4 notas.
  FIMPARA;
  aluno.media <- soma/4;                                         // Cálculo da média
  EXIBA("BOLETIM ESCOLAR");                                      // Exibição do boletim no formato.
  EXIBA("Aluno.......:",aluno.nome);
  EXIBA("NOTAS");
  PARA i <- 1 ATE 4 FACA
    EXIBA(i,"    ");
  FIMPARA;
  PARA i <- 1 ATE 4 FACA
    SE(aluno.nota[i] < 10)
      ENTAO EXIBA(aluno.nota[i],"    ")
      SENAO EXIBA(aluno.nota[i],"   ");
    FIMSE;
  FIMPARA;
  EXIBA("MEDIA");
  EXIBA(aluno.media);
FIM.
}

Program Boletim_Aluno;
uses crt;
TYPE
  bimestre = array[1..4] of real;
  cad_aluno = Record
                nome: string;
                nota: bimestre;
                media: real;
              End;
VAR
  soma: real;
  i: integer;
  aluno: cad_aluno;                                            
Begin
  clrscr;
  writeln('Programa que exibe a média e as notas de um aluno.');
  writeln('Digite o nome do aluno:');
  readln(aluno.nome);
  soma:= 0;
  for i:= 1 to 4 do
  Begin
    writeln('Digite a ',i,'ª nota:');
    readln(aluno.nota[i]);
    while((aluno.nota[i] < 0) or (aluno.nota[i] > 10))do
    Begin
      writeln('Digite uma nota entre 0 e 10.');
      readln(aluno.nota[i]);
    End;
    soma:= soma + aluno.nota[i];
  End;
  aluno.media:= soma/4;
  writeln('BOLETIM ESCOLAR');
  writeln('Aluno.......:',aluno.nome);
  writeln('NOTAS');
  for i := 1 to 4 do
    write('   ',i,'   ');
  writeln('');
  for i:= 1 to 4 do
    if(aluno.nota[i] < 10)
      then write(aluno.nota[i]:0:2,'   ')                     // Falta alinhar melhor.
      else write(aluno.nota[i]:0:2,'  ');
  writeln('');
  write('MEDIA:',aluno.media:0:2);
  repeat until keypressed;
End.