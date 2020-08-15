{
Exercício 3:  Faça um programa em Pascal para cadastrar até 250 produtos de uma loja com os seguintes dados:
código, descrição, estoque mínimo, estoque atual e preço. Mostrar todos os dados dos produtos que
contenham o estoque atual menor que o estoque mínimo, para efetuar compra.
}

Program estoque_loja;
uses crt;
Type
  cad_produto = Record
                  codigo: string[4];
                  descricao: string[20];
                  estoqueminimo: Integer;
                  estoqueatual: Integer;
                End;
  vet_produto = Array[1..250] of cad_produto;
Var
  produto: vet_produto;
  funcionamento,menu: char;
  i: Integer;

Procedure Cadastro(a: char);
Begin
  writeln('Cadastro de Produtos.');
  writeln('Digite o codigo do produto: ');
  Readln(produto[i].codigo);
  WriteLn('Digite a descricao do produto:');
  readln(produto[i].descricao);
  writeln('Digite o estoque minimo do produto:');
  Readln(produto[i].estoqueminimo);
  while(produto[i].estoqueminimo < 0)Do
  Begin
    WriteLn('Digite um valor maior que 0');
    Readln(produto[i].estoqueminimo);
  End;
  writeln('Digite o estoque atual do produto:');
  Readln(produto[i].estoqueatual);
  while(produto[i].estoqueatual < 0)Do
  Begin
    WriteLn('Digite um valor maior que 0');
    Readln(produto[i].estoqueatual);
  End;
  i := i + 1;
End;

Procedure ReporEstoque(a: char);
Var
  j: Integer;
Begin
  writeln('');
  writeln('Reposicao de Estoque.');
  for j := 1 to 250 do
  Begin
    if(produto[j].estoqueatual < produto[j].estoqueminimo)
      then Begin
             writeln('Codigo do produto: ',produto[j].codigo);
             writeln('Descricao do produto: ',produto[j].descricao);
             writeln('Estoque atual: ',produto[j].estoqueatual);
             writeln('Estoque minimo: ',produto[j].estoqueminimo);
             writeln('Comprar pelo menos: ',produto[j].estoqueminimo - produto[j].estoqueatual);
           End;
  End;
  writeln('');
End;

Begin
  ClrScr;
  i:= 1;
  funcionamento := 'S';
  WriteLn('Programa de estoque de uma loja.');
  while(funcionamento = 'S')Do
  Begin
    writeln('Menu: Escolha uma das opcoes');
    writeln('1 - Cadastrar Produto');
    writeln('2 - Avaliar Estoque');
    writeln('3 - Sair do Programa');
    Readln(menu);
    while((menu <> '1') and (menu <> '2') and (menu <> '3'))Do
    Begin
      writeln('Digite 1 - Cadastrar Produto, 2 - Avaliar Estoque ou 3 - Sair do Programa');
      Readln(menu); 
    End;
    Case(menu)Of
      '1': Cadastro(menu);
      '2': ReporEstoque(menu);
      '3': Begin
             funcionamento := 'N';
             writeln('Fim do Programa.');
           End;
    End;	 
  End;
  Repeat Until KeyPressed;
End.