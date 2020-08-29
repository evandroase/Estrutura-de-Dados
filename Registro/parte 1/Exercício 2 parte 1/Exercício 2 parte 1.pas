{
Exercício 2: Idem ao anterior, porém manipular os dados para uma sala de 40 alunos.

Algoritmo Boletim_Aluno;
TIPO
  bimestre = VETOR[1..4] de real;
  cad_aluno = REGISTRO
                nome: caracter;
                nota: bimestre;
                media: real;
              FIM;
  pastacad_alunos = VETOR[1..40] de cad_aluno;
VAR
  soma: VETOR[1..40] de real;
  i,j: inteiro;
  aluno: pastacad_alunos;                                                  // Variável de registro dos alunos que
INICIO                                                                     // recebe as 4 notas bimestrais, nome e média.
  EXIBA("Programa que exibe a média e as notas de um aluno.");
  PARA i <- 1 ATE 40 FACA
    soma[i] <- 0;
  FIMPARA;
  PARA i <- 1 ATE 40 FACA
    EXIBA("Digite o nome do aluno:");
    LEIA(aluno[i].nome);
    PARA j <- 1 ATE 4 FACA                                                 //Leitura das 4 notas.
      EXIBA("Digite a ",j,"ª nota:");
      LEIA(aluno[i].nota[j]);
      ENQUANTO((aluno[i].nota[j] < 0) OU (aluno[i].nota[j] > 10))FACA      // Se nota for negativa ou maior que 10 o programa
        EXIBA("Digite uma nota entre 0 e 10.");                            // exige uma nota válida.
        LEIA(aluno[i].nota[j]);
      FIMENQUANTO;
      soma[i] <- soma[i] + aluno[i].nota[j];                               // Soma das 4 notas.
    FIMPARA;
  FIMPARA;
  PARA i <- 1 ATE 40 FACA
    aluno[i].media <- soma[i]/4;                                           // Cálculo da média
  FIMPARA;
  PARA i <- 1 ATE 40 FACA
    EXIBA("BOLETIM ESCOLAR");                                              // Exibição do boletim no formato.
    EXIBA("Aluno.......:",aluno[i].nome);
    EXIBA("NOTAS");
    PARA j <- 1 ATE 4 FACA
      EXIBA("  ",j,"   ");
    FIMPARA;
    PARA j <- 1 ATE 4 FACA
      SE(aluno[i].nota[j] < 10)
        ENTAO EXIBA(aluno[i].nota[j],"    ")
        SENAO EXIBA(aluno[i].nota[j],"   ");
      FIMSE;
    FIMPARA;
    EXIBA("MEDIA:",aluno[i].media);
  FIMPARA;
FIM.
}

Program Boletim_Aluno;
uses crt;
TYPE
  bimestre = ARRAY[1..4] of real;
  cad_aluno = RECORD
                nome: string;
                nota: bimestre;
                media: real;
              End;
  pastacad_alunos = ARRAY[1..40] of cad_aluno;
VAR
  soma: ARRAY[1..40] of real;
  i,j: integer;
  aluno: pastacad_alunos;                                                  // Variável de registro dos alunos que
Begin                                                                      // recebe as 4 notas bimestrais, nome e média.
  clrscr;
	writeln('Programa que exibe a média e as notas de um aluno.');
  for i := 1 to 40 do
    soma[i] := 0;
  for i := 1 to 40 do
  begin
    writeln('Digite o nome do aluno:');
    readln(aluno[i].nome);
    for j := 1 to 4 do
    Begin
      writeln('Digite a ',j,'ª nota:');
      readln(aluno[i].nota[j]);
      while((aluno[i].nota[j] < 0) or (aluno[i].nota[j] > 10))do
      Begin
        writeln('Digite uma nota entre 0 e 10.');
        readln(aluno[i].nota[j]);
      End;
      soma[i] := soma[i] + aluno[i].nota[j];                              
    End;
	End;
  for i := 1 to 40 do
    aluno[i].media := soma[i]/4;                                         
  for i := 1 to 40 do
  Begin
    writeln('');
    writeln('BOLETIM ESCOLAR');
    writeln('Aluno.......:',aluno[i].nome);
    writeln('NOTAS');
    for j := 1 to 4 do
      write('  ',j,'  ');
    writeln('');
    for j := 1 to 4 do
      if(aluno[i].nota[j] < 10)
        then write(aluno[i].nota[j]:0:2,' ')
        else write(aluno[i].nota[j]:0:2);
    writeln('');
    writeln('MEDIA: ',aluno[i].media:0:2);
  End;
  repeat until keypressed;
End.