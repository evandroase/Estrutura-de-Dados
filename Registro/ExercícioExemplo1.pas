{
 Exercício: Escreva um algoritmo que receba o nome e as 4 notas de aluno, calcule e exiba a média das
notas e a situação (aprovado ou reprovado) baseado na média maior ou igual a 6,0.

Algoritmo Boletim_Aluno;
TIPO
  cad_aluno: REGISTRO
               nome: caracter;
               nota1: real;
               nota2: real;
               nota3: real;
               nota4: real;
               media: real;
               situacao: caracter;
             FIM;
VAR
  aluno: cad_aluno;
INICIO
  EXIBA("BOLETIM ESCOLAR");
  EXIBA("DIGITE O NOME DO ALUNO:");
  LEIA(aluno.nome);
  EXIBA("DIGITE A 1ª NOTA DE ",aluno.nome);
  LEIA(aluno.nota1);
  EXIBA("DIGITE A 2ª NOTA DE ",aluno.nome);
  LEIA(aluno.nota2);
  EXIBA("DIGITE A 3ª NOTA DE ",aluno.nome);
  LEIA(aluno.nota3);
  EXIBA("DIGITE A 4ª NOTA DE ",aluno.nome);
  LEIA(aluno.nota4);
  aluno.media <- (aluno.nota1 + aluno.nota2 + aluno.nota3 + aluno.nota4)/4;
  SE(aluno.media < 6)
    ENTAO aluno.situacao <- "REPROVADO"
    SENAO aluno.situacao <- "APROVADO";
  FIMSE;
  EXIBA(aluno.nome," está ",aluno.situacao," com média ",aluno.media);
FIM.							 
}

Program Boletim_Aluno;
uses crt;
TYPE
  cad_aluno = RECORD
                nome: string;
                nota1: real;
                nota2: real;
                nota3: real;
                nota4: real;
                media: real;  
                situacao: string;
              END;
VAR
  aluno: cad_aluno;
BEGIN
  clrscr;
  writeln('BOLETIM ESCOLAR');
  writeln('DIGITE O NOME DO ALUNO:');
  readln(aluno.nome);
  writeln('DIGITE A 1ª NOTA DE ',aluno.nome);
  readln(aluno.nota1);
  writeln('DIGITE A 2ª NOTA DE ',aluno.nome);
  readln(aluno.nota2);
  writeln('DIGITE A 3ª NOTA DE ',aluno.nome);
  readln(aluno.nota3);
  writeln('DIGITE A 4ª NOTA DE ',aluno.nome);
  readln(aluno.nota4);
  aluno.media := (aluno.nota1 + aluno.nota2 + aluno.nota3 + aluno.nota4)/4;
  if(aluno.media < 6)
    then aluno.situacao:= 'REPROVADO'
    else aluno.situacao:= 'APROVADO';
  writeln(aluno.nome,' está ',aluno.situacao,' com média ',aluno.media:0:2);
  repeat until keypressed;
END.