{
Exercício 4:  Faça um programa em Pascal para cadastrar o nome do município, seu estado e sua população.
Mostrar todos os  municípios  cadastrados  do  estado  de  Goiás e  os dados  do município  que  contém
a  maior população. Cadastrar até 90 municípios.
}

Program cadastro_municipios;
uses crt;
Type
  cad_municipio = Record
                    estado : string[2];
                    cidade: string[20];
                    populacao: Integer;
                  End;
  vet_municipio = Array[1..90] of cad_municipio;
Var
  cadastro: vet_municipio;
  funcionamento,menu: char;
  i: Integer;

Procedure Cadastrar(a: char);
Begin
  writeln('Cadastro de Municipios.');
  writeln('Digite o municipio: ');
  Readln(cadastro[i].cidade);
  WriteLn('Digite o estado:');
  readln(cadastro[i].estado);
  writeln('Digite a população do municipio:');
  Readln(cadastro[i].populacao);
  while(cadastro[i].populacao < 0)Do
  Begin
    WriteLn('Digite um valor maior que 0');
    Readln(cadastro[i].populacao);
  End;
  i := i + 1;
End;

Procedure Busca(a: char);
Var
  j,maior: Integer;
  cidade : String[20];
  estado : String[2];
Begin
  maior := 0;
  writeln('');
  writeln('Municipios de Goias.');
  for j := 1 to 90 do
  Begin
    if((cadastro[j].estado = 'go') or (cadastro[j].estado = 'GO'))
      then Begin
             writeln('Cidade: ',cadastro[j].cidade);
           End;
    if(cadastro[j].populacao > maior)
      then Begin
             maior := cadastro[j].populacao;
             cidade := cadastro[j].cidade;
             estado := cadastro[j].estado;
           End;
  End;
  writeln('');
  writeln('Cidade com maior populacao: ', cidade);
  writeln('Estado : ',estado);
  WriteLn('Populacao: ',maior);
End;

Begin
  ClrScr;
  i:= 1;
  funcionamento := 'S';
  WriteLn('Programa de estoque de uma loja.');
  while(funcionamento = 'S')Do
  Begin
    writeln('');
    writeln('Menu: Escolha uma das opcoes');
    writeln('1 - Cadastrar Cidade');
    writeln('2 - Buscar cidades em GO e qual a cidade com maior populacao');
    writeln('3 - Sair do Programa');
    Readln(menu);
    while((menu <> '1') and (menu <> '2') and (menu <> '3'))Do
    Begin
      writeln('Digite 1 - Cadastrar Cidade, 2 - Buscar cidades em GO e qual a cidade com maior populacao ou 3 - Sair do Programa');
      Readln(menu);
    End;
    Case(menu)Of
      '1': Cadastrar(menu);
      '2': Busca(menu);
      '3': Begin
             funcionamento := 'N';
             writeln('Fim do Programa.');
           End;
    End;
  End;
  Repeat Until KeyPressed;
End.