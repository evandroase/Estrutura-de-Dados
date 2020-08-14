{

Exercício 2: Faça um programa em Pascal para ler os dados (nome, salário, estado civil, sexo, número de
dependentes, cidade e estado de residência) dos funcionários de uma empresa e mostrar uma listagem
de todos os dados dos funcionários(as) CASADOS(AS), residentes no RS e com SALÁRIO  acima  de R$ 1.500,00.
Cadastrar no máximo 200 funcionários.

}

Program cadastro_funcionarios;
uses crt;
Type
  cad_func = Record
               nome: String;
               salario: real;
               estadocivil: char;
               sexo: char;
               dependentes: Integer;
               cidade: String;
               estado: String;
             End;
  vet_func = Array[1..200] of cad_func;
Var
  funcionario:vet_func;
  menu,funcionamento: char;
	i: Integer;
	
Procedure Cadastro(a:char);                                 // Procedure do Cadastro.
Begin
  WriteLn('Cadastro de Funcionario.');
  WriteLn('Digite o nome do funcionario: ');                // Cadastro do nome do funcionario.
  readln(funcionario[i].nome);
  writeln('Digite o salario do funcionario');               // Cadastro do salario (salario > 0)
  readln(funcionario[i].salario);
  while(funcionario[i].salario < 0)Do
  Begin
    writeln('');
    WriteLn('Digite um salario valido:');
    readln(funcionario[i].salario);
  End;
  writeln('');
  writeln('Digite o estado civil do funcionario:');         // Cadastro do estado civil.
  WriteLn('1 - solteiro');                                  // Vou colocar só 3 dos 5 estados para facilitar.
  WriteLn('2 - casado');
  WriteLn('3 - viuvo');
  readln(funcionario[i].estadocivil);
  while((funcionario[i].estadocivil <> '1') and (funcionario[i].estadocivil <> '2') and (funcionario[i].estadocivil <> '3'))do
  Begin
    WriteLn('');
    WriteLn('Digite 1 para solteiro, 2 para casado ou 3 para viuvo.');
    readln(funcionario[i].estadocivil);
  End;
  writeln('');
  writeln('Digite o sexo do funcionario:');
  WriteLn('1 - Masculino');
  WriteLn('2 - Feminino');
  readln(funcionario[i].sexo);
  while((funcionario[i].sexo <> '1') and (funcionario[i].sexo <> '2'))do
  Begin
    WriteLn('Digite 1 para masculino ou 2 para feminino.');
    readln(funcionario[i].sexo);
  End;
  writeln('');
  WriteLn('Digite a quantidade de dependentes do funcionario:');
  readln(funcionario[i].dependentes);
  while(funcionario[i].dependentes < 0)do
  Begin
    writeln('');
    WriteLn('Digite uma quantidade valida de dependentes.');
    readln(funcionario[i].dependentes);
  End;
  writeln('');
  WriteLn('Digite a cidade do funcionario:');
  readln(funcionario[i].cidade);
	WriteLn('');
  WriteLn('Digite o estado do funcionario:');
  readln(funcionario[i].estado);
  i := i + 1;
End;

Procedure Busca(a:char);
Var
  j,acumulador: Integer;
  salario: Real;
  estadocivil: char;
  estado: string;
Begin
  acumulador := 0;
  writeln('Busca de Funcionarios.');
  writeln('Funcionarios com salarios acima de:');
  Readln(salario);
  writeln('Funcionarios com Estado Civil: ');
  writeln('1 - solteiro');
  writeln('2 - casado');
  writeln('3 - viuvo');
  readln(estadocivil);
  writeln('Funcionarios que moram no Estado de:');
  readln(estado);
  for j := 1 to 200 Do
  Begin
    if((funcionario[j].estado = estado) and (funcionario[j].estadocivil = estadocivil) and (funcionario[j].salario > salario)) 
      then Begin
             writeln('Nome: ',funcionario[j].nome);
             if(funcionario[j].sexo = '1')
               then writeln('Sexo: Masculino')
               else writeln('Sexo: Feminino');
             writeln('Salario: R$',funcionario[j].salario:0:2);
             if(funcionario[j].estadocivil = '1')
               then writeln('Estado Civil: Solteiro(a)')
               else if(funcionario[j].estadocivil = '2')
                      then WriteLn('Estado Civil: Casado(a)')
                      else WriteLn('Estado Civil: Viuvo(a)');
             writeln('Numero de dependentes: ',funcionario[j].dependentes);
             writeln('Estado: ',funcionario[j].estado);
             writeln('Cidade: ',funcionario[j].cidade);
             writeln('');
           End;
	End;
  if(acumulador = 0)
      then WriteLn('Nenhum resultado encontrado.');
End;

Begin                                              // Menu
  clrscr;
  funcionamento := 'S';
  i := 1;                 // Contador para cadastro
  while(funcionamento = 'S')Do
  Begin
    WriteLn('');
    writeln('Menu: Escolha uma das opções abaixo:');
    writeln('1 - Cadastrar Funcionario');
    writeln('2 - Buscar Funcionarios');
    WriteLn('3 - Sair do Programa');
    Readln(menu);
    case(menu)of
      '1': Begin
             if(i < 200)
               then Cadastro(menu)
               else writeln('Numero maximo de funcionarios cadastrados.');
           End;    
      '2': Busca(menu);
      '3': funcionamento := 'N';
      else
        writeln('Opcao invalida.');
    End;
  End;
  writeln('Saindo do programa.');
  repeat until keypressed;
End.