{
Exerc�cio 1: Fa�a um programa em Pascal para cadastrar at� 300 im�veis a serem alugados ou vendidos, contendo os
seguintes dados: tipo (loja, apartamento, casa, quitinete � kitchenet), endere�o, bairro, valor, situa��o (aluguel
ou venda). Ao final, solicitar ao usu�rio a situa��o a ser pesquisada e mostrar todos os dados dos im�veis
enquadrados na solicita��o.
}

Program Cadastro_Imobiliaria;
uses crt;
Type
  cad_imobiliaria= Record
                     tipo: char;
                     endereco: String;
                     bairro: String;
                     valor: Real;
                     situacao: char;
                   End;
  vet_cadastro = Array[1..300] of cad_imobiliaria;
Var
  imovel: vet_cadastro;
  cadastrar,buscar: char;

Procedure Cadastro(a:char);
Var
  i: Integer;
Begin
  i := 1;
  While((cadastrar = 'S') or (cadastrar = 's'))do           // Cadastro de at� 300 im�veis.
  Begin
    WriteLn('');                                            
    WriteLn('Bem-vindo ao cadastro de clientes.');          
    WriteLn('Digite o tipo de im�vel: ');                   // Cadastro do tipo de im�vel. 
    WriteLn('1 - loja');
    WriteLn('2 - apartamento');
    WriteLn('3 - casa');
    WriteLn('4 - kitnet');
    Readln(imovel[i].tipo);
    While((imovel[i].tipo <> '1') and (imovel[i].tipo <> '2') and (imovel[i].tipo <> '3') and (imovel[i].tipo <> '4')) Do
    Begin
      WriteLn('Digite 1 - loja, 2 - apartamento, 3 - casa. 4 - kitnet');
      readln(imovel[i].tipo);
    End;
    WriteLn('');
    writeln('Digite o endere�o do imovel:');               // Cadastro do endere�o do im�vel.
    Readln(imovel[i].endereco);
    WriteLn('');
    writeln('Digite o bairro do imovel:');                 // Cadastro do bairro do im�vel.
    Readln(imovel[i].bairro);
    WriteLn('');
    WriteLn('Qual o valor do im�vel?');                    // Cadastro do valor do im�vel.
    Readln(imovel[i].valor);
    While(imovel[i].valor < 0)Do
    Begin
      writeln('');
      WriteLn('Digite um valor v�lido: ');
      Readln(imovel[i].valor);
    End;
    WriteLn('');
    WriteLn('Digite a situa��o do im�vel:');              // Cadastro da situacao do im�vel.
    WriteLn('1 - Alugando');
    WriteLn('2 - Vendendo');
    Readln(imovel[i].situacao);
    While((imovel[i].situacao <> '1') and (imovel[i].situacao <> '2'))Do
    Begin
      WriteLn('');
      WriteLn('Digite 1 - Alugando ou 2 - Vendendo.');
      Readln(imovel[i].situacao);
    End;
    WriteLn('Deseja continuar cadastrando?');             // Continuar cadastrando?
    WriteLn('Digite S ou s para continuar cadastrando.');
    Readln(cadastrar);
    i := i + 1;
  End;
End;

Procedure Busca(a:char);
Var
  i,acumulador: Integer;
  situacao,tipo: char;
  
Begin
  While((buscar = 'S') or (buscar = 's'))do                 // Busca de im�veis.
  Begin
    WriteLn('Voc� procura qual tipo de im�vel?');           // Tipo de im�vel.
    WriteLn('1 - loja');
    WriteLn('2 - apartamento');                             // Vou filtrar apenas tipo e situacao do im�vel.
    WriteLn('3 - casa');
    WriteLn('4 - kitnet');
    Readln(tipo);
    While((tipo <> '1') and (tipo <> '2') and (tipo <> '3') and (tipo <> '4')) Do
    Begin
      WriteLn('');
      WriteLn('Digite 1 - loja, 2 - apartamento, 3 - casa. 4 - kitnet');
      readln(tipo);
    End;
    WriteLn('Qual a situacao do im�vel?');
    WriteLn('1 - alugar');
    WriteLn('2 - vender');
    Readln(situacao);
    While((situacao <> '1') and (situacao <> '2'))Do
    Begin
      WriteLn('');
      WriteLn('Digite 1 - alugar ou 2 - vender');
      Readln(situacao);
    End;
    acumulador:= 0;
    for i := 1 to 300 Do
    Begin
      if((tipo = imovel[i].tipo) and (situacao = imovel[i].situacao))
        then Begin
               case (imovel[i].tipo)of
                 '1': writeln('Tipo do Imovel: Loja');
                 '2': writeln('Tipo do Imovel: Apartamento');
                 '3': writeln('Tipo do Imovel: Casa');
                 '4': writeln('Tipo do Imovel: Kitnet');
               End;
               WriteLn('Endereco: ',imovel[i].endereco);
               WriteLn('Bairro: ',imovel[i].bairro);
               WriteLn('Valor: R$',imovel[i].valor:0:2);
               case (imovel[i].situacao)of
                 '1': writeln('Situacao do Imovel: Alugando');
                 '2': writeln('Situacao do Imovel: Vendendo');
               End;
               acumulador := acumulador + 1;
             End;
    End;
    if(acumulador = 0)
      then WriteLn('Nenhum imovel foi encontrado.');
    writeln('');
    WriteLn('Deseja continuar buscando?');
    WriteLn('Digite S ou s para continuar buscando.');
    Readln(buscar);
  End;
End;

Begin                                             // Parte principal.
  clrscr;
  cadastrar := 'S';
  buscar := 'S';
  Cadastro(cadastrar);
  Busca(buscar);
  repeat until keypressed;
End.