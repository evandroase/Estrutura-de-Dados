{
  Exerc�cio: Usando os conceitos de ponteiro e vari�veis din�micas, escreva um algoritmo que armazene o nome de
  um aluno e suas duas notas de prova. Calcule a m�dia das notas e exiba o nome e a m�dia.
}

Program Media_Aluno;
uses crt;
Type
  p = ^String;
  q = ^Real;
Var
  nome: p;
  N1,N2,MEDIA: q;
Begin
  new(nome);
  new(N1);
  new(N2);
  new(MEDIA);
  WriteLn('Digite o nome do aluno:');
  readln(nome^);
  WriteLn('Digite a 1� nota:');
  readln(N1^);
  WriteLn('Digite a 2� nota:');
  readln(N2^);
  MEDIA^ := (N1^ + N2^)/2;
  WriteLn('ALUNO:',nome^);
  writeln('MEDIA:',MEDIA^:0:2);
  dispose(nome);
  dispose(N1);
  dispose(N2);
  dispose(MEDIA);
  Repeat Until KeyPressed;
End.
  