Program Exemplo;
uses crt;
Type
  p = ^String;
Var
  copia_nome: p;
  nome: String;
Begin
  ClrScr;
  writeln('Digite um nome:');
  readln(nome);
  copia_nome:= @nome;
  writeln('Conteudo do nome:',nome);
  writeln('Cópia do nome:',copia_nome^);
  Repeat Until KeyPressed;
End.