{

Exercício 2: Uma pessoa cadastrou um conjunto de 15 registros contendo o nome da loja, telefone e preço de um
eletrodoméstico. Desenvolver um algoritmo que permita exibir  qual foi a média dos preços cadastrados e uma
relação contendo o nome e o telefone das lojas cujo preço estava abaixo da média.

}

Program cadastro;
Uses crt;
Type
  cad_produto = Record
                  loja: string;
                  telefone: Integer;
                  preco: real;
                End;
  vet_produto = Array[1..15] of cad_produto;
Var
  produto: vet_produto;
  i: integer;
  funcionamento: boolean;
  menu: char;
  soma: real;

Procedure Cadastrar(a: char);
Begin
  writeln('');
  writeln('Cadastro de precos.');
  writeln('');
  writeln('Digite a loja do produto:');
  Readln(produto[i].loja);
  writeln('');
  writeln('Digite o telefone da loja:');
  readln(produto[i].telefone);
  while((produto[i].telefone < 10000000) or (produto[i].telefone > 999999999))do
  Begin
    writeln('Digite um numero de telefone valido:');
    readln(produto[i].telefone);
  End;
  writeln('');
  writeln('Digite o preco do produto:');
  readln(produto[i].preco);
  while(produto[i].preco < 0)do
  Begin
    writeln('Digite um preco valido.');
    readln(produto[i].preco);
  End;
  soma:= soma + produto[i].preco;
  i:= i + 1;
End;

Procedure Busca(b:char);
Var
  j: integer;
  media: real;

Begin
  media:= soma/i;
  writeln('');
  writeln('Media dos precos: R$', media:0:2);
  writeln('Lojas com preco abaixo da media:');
  writeln('');
  for j:= 1 to i-1 do
    if(produto[j].preco < media)
      then Begin
             writeln('Loja: ',produto[j].loja);
             writeln('Telefone: ',produto[j].telefone);
             writeln('');
           End;
End;

Begin
  writeln('Cadastro de precos.');
  i := 1;
  soma := 0;
  funcionamento:= true;
  while(funcionamento = true)Do
  Begin
    writeln('Menu de opcoes. Escolha uma das opcoes abaixo:');
    writeln('1 - Cadastro de preco');
    writeln('2 - Busca de preco');
    writeln('3 - Sair do Programa');
    readln(menu);
    case(menu)of
      '1': Cadastrar(menu);
      '2': Busca(menu);
      '3': writeln('Fim do Programa.');
         else
           writeln('Digite uma opcao valida.');
    End;
  End;
End.

	