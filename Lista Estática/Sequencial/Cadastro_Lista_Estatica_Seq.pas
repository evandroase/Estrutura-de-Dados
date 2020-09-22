Program Cadastro_Lista_Estatica_Seq;
uses crt;

Const
  max = 500;

Type
  cadastro = Record
               endereco: string;
               telefone: string;
               nome: string;
             End;
  lista = Record
            elem: array[1..max] of cadastro;
            num: Integer;
          End;
Var
  menu: char;
  L: lista;
  posicao: Integer;

Procedure menuPrincipal(Var menu:char);                           // 0 - Menu Principal
Begin
  writeln('Programa de clientes.');
  writeln('1 - Criar lista de clientes.');
  writeln('2 - Conferir se lista está vazia.');
  writeln('3 - Adicionar um cliente na sequência.');
  writeln('4 - Adicionar um cliente em uma posição de sua escolha.');
  writeln('5 - Excluir cliente.');
  writeln('6 - Verificar quantidade de clientes cadastrados.');
  writeln('7 - Confere uma posicao.');
  writeln('8 - Sair.');
  readln(menu);
  ClrScr;
End;

Procedure criaLista(Var L: lista);                                 // 1 - Criação da lista
Begin
  L.num := 0;
  writeln('Lista criada com sucesso.');
End;

Function confereLista(L:lista):Boolean;                            // 2 - Confere se lista tem elementos.
Begin
  if(L.num = 0)
    then confereLista := true
    else confereLista := false;
End;

Procedure adicionaSeq(Var L: lista);
Begin                                                              // 3 - Adiciona elemento na sequência.
  L.num := L.num + 1;
  writeln('Digite o nome do cliente:');
  Readln(L.elem[L.num].nome);
  writeln('Digite o endereco de ',L.elem[L.num].nome,':');
  Readln(L.elem[L.num].endereco);
  writeln('Digite o telefone de ',L.elem[L.num].nome,':');
  Readln(L.elem[L.num].telefone);
  ClrScr;
  writeln('Cadastro efetuado com sucesso.');
End;

Procedure adicionaPosicao(Var L:lista; posicao: Integer);           // 4 - Adiciona elemento em posição indicada pelo usuário.
Var
  i: Integer;
Begin
  for i:= (L.num) DownTo (posicao + 1) do
  Begin
    L.elem[i+1].nome := L.elem[i].nome;
    L.elem[i+1].endereco := L.elem[i].endereco;
    L.elem[i+1].telefone := L.elem[i].telefone;
  End;
  L.num := L.num + 1;
  writeln('Digite o nome do cliente:');
  Readln(L.elem[posicao].nome);
  writeln('Digite o endereco de ',L.elem[posicao].nome,':');
  Readln(L.elem[posicao].endereco);
  writeln('Digite o telefone de ',L.elem[posicao].nome,':');
  Readln(L.elem[posicao].telefone);
  ClrScr;
  writeln('Cadastro efetuado com sucesso.');
End;

Procedure excluiElemento(Var L:lista; posicao: integer);             // 5 - Exclui um elemento de sua escolha. 
Var
  i:integer;
Begin
  if(posicao <> L.num)
    then for i:= posicao to (L.num -1)do
         Begin
           L.elem[posicao].nome := L.elem[posicao + 1].nome;
           L.elem[posicao].endereco := L.elem[posicao + 1].endereco;
           L.elem[posicao].telefone := L.elem[posicao + 1].telefone;
         End;
  L.num := L.num - 1;
End;

Function verificaQuantidade(L:lista): Integer;                       // 6 - Verifica a quantidade de elementos do vetor.
Begin
  verificaQuantidade := L.num;
End;


Procedure consultaPosicao(posicao: integer);                         // 7 - Consulta a posição escolhida pelo usuário.
Begin
  writeln('Nome: ', L.elem[posicao].nome);
  writeln('Endereco: ', L.elem[posicao].endereco);
  writeln('Telefone: ', L.elem[posicao].telefone);
  writeln('');
End;

Begin
  Repeat
    menuPrincipal(menu);
    case(menu)of
      '1': criaLista(L);
      '2': if(confereLista(L))
             then writeln('Lista vazia.')
             else writeln('Lista nao vazia.');
      '3': adicionaSeq(L);
      '4': Begin
             writeln('Digite a posicao que deseja adicionar:');
             readln(posicao);
             adicionaPosicao(L,posicao); 
           End;
      '5': Begin
             writeln('Qual posicao você deseja excluir?');
             readln(posicao);
             excluiElemento(L,posicao);
           End;
      '6': writeln('Quantidade de clientes cadastrados:',verificaQuantidade(L));
      '7': Begin
             writeln('Qual posicao deseja consultar?');
             readln(posicao); 
             consultaPosicao(posicao);
           End;
      '8': writeln('Saindo do programa');
    end;
  Until (menu = '8');
  Repeat Until KeyPressed;
End.