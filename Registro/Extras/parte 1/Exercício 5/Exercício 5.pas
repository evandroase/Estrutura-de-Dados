{

Exercício 5: Faça um programa em Pascal para cadastrar o horário de partida de vôos, com os dados:
código, horário de partida, quantidade de passageiros, valor da passagem, origem e destino. Solicitar ao
usuário a origem e mostrar   todos   os   dados   dos   vôos   que   possuem   esta   origem.   Mostrar,
também, todos os vôos que possuem horário de partida pela manhã.

}

Program aeroporto;
uses crt;
Type
  cad_voos = Record
               codigo: string[4];
               hora: integer;
               minuto:integer;
               passageiros: integer;
               valor: real;
               origem: string;
               destino: String;
             End;
  vet_voos = Array[1..100] of cad_voos;
Var
  voo: vet_voos;
  menu,funcionamento: char;               
  i: Integer;

Procedure Cadastrar(a: char);
Begin
  writeln('Cadastro de horario de voos');
  writeln('');
  writeln('Digite o codigo do voo:');
  readln(voo[i].codigo);
  writeln('Digite o numero de passageiros no voo:');
  readln(voo[i].passageiros);
  while(voo[i].passageiros < 0)Do
  Begin
    writeln('Digite um numero valido de passageiros:');
    readln(voo[i].passageiros);
  End;
  writeln('Digite o preco da passagem:');
  readln(voo[i].valor);
  While(voo[i].valor < 0)Do
  Begin
    writeln('Digite o preço correto da passagem.');
    readln(voo[i].valor);
  End;
  writeln('Digite a origem do voo:');
  Readln(voo[i].origem);
  writeln('Digite o destino do voo');
  Readln(voo[i].destino);
  writeln('Digite a hora do voo:');
  readln(voo[i].hora);
  while((voo[i].hora < 0) or (voo[i].hora > 23))do
  Begin
    WriteLn('Digite uma hora valida:');
    Readln(voo[i].hora);
  End;
  writeln('Digite os minutos do voo:');
  readln(voo[i].minuto);
  while((voo[i].minuto < 0) or (voo[i].minuto > 59))Do
  Begin
    WriteLn('Digite uma quantidade de minutos valida:');
    Readln(voo[i].minuto);
  End;
  i:=i+1;
End;

Procedure BuscaVoo(a:char);
Var
  origem: string;
  j,acumulador: integer;
Begin
  acumulador := 0;
  Writeln('');
  writeln('Digite a origem do voo:');
  readln(origem);
  for j:= 1 to 100 do
  Begin
    if(origem = voo[j].origem)
      then Begin
             writeln('');
             writeln('Codigo: ',voo[j].codigo);
             writeln('Partida: ',voo[j].hora,':',voo[j].minuto);
             writeln('Quantidade de passageiros: ',voo[j].passageiros);
             writeln('Valor: R$',voo[j].valor:0:2);
             writeln('Origem: ',voo[j].origem);
             writeln('Destino: ',voo[j].destino);
             acumulador:= acumulador + 1;
           End;
  End;
	if(acumulador = 0)
    then writeln('Nenhum voo encontrado para essa Origem.');
  acumulador := 0;
  writeln('');
  writeln('Lista de voos da manha.');
  for j:= 1 to 100 do
  Begin
    if((voo[j].hora > 5) and (voo[j].hora < 12))
      then Begin
             writeln('');
             writeln('Codigo: ',voo[j].codigo);
             writeln('Partida: ',voo[j].hora,':',voo[j].minuto);
             writeln('Quantidade de passageiros: ',voo[j].passageiros);
             writeln('Valor: R$',voo[j].valor:0:2);
             writeln('Origem: ',voo[j].origem);
             writeln('Destino: ',voo[j].destino);
             acumulador:= acumulador + 1;
           End;
  End;
  if(acumulador = 0)
    then writeln('Nenhum voo encontrado no periodo da manha.');
End;

Begin
  clrscr;
  funcionamento := 'S';
  i:= 1;
  while(funcionamento = 'S')Do
  Begin
    writeln('');
    writeln('Menu: Escolha uma das opções:');
    writeln('1 - Cadastrar voo');
    writeln('2 - Buscar por origem de voos e voos de manha');
    writeln('3 - Sair do Programa');
    readln(menu);
    case(menu)Of
      '1': Cadastrar(menu);
      '2': BuscaVoo(menu);
      '3': funcionamento := 'N';
      else
           writeln('Opcao invalida.');
    End;
  End;
  writeln('Fim do programa.');
  repeat until keypressed;
End.