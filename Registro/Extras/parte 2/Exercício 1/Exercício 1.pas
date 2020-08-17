{

Exercício 1: Dados os seguintes campos de um registro:  nome, dia de aniversário e mês de aniversário,
desenvolver um algoritmo que mostre em cada um dos meses do ano quem são as pessoas que fazem aniversário,
exibir também o dia. Considere um conjunto de 40 pessoas.

}

Program Registro_nomes;
uses crt;
Type
  reg_cadastro = Record
                   nome: string;
                   dia: integer;
                   mes: string;
                 End;
  vet_cadastro = Array[1..40] of reg_cadastro;
Var
  i: integer;
  cadastro: vet_cadastro;
	menu: char;
  funcionamento: boolean;
	
Procedure Cadastrar (a:char);
Begin
  writeln('');
  writeln('Digite o nome da pessoa:');
  readln(cadastro[i].nome);
  writeln('');
  writeln('Digite o mês de aniversário da pessoa.');
  readln(cadastro[i].mes);
	while((cadastro[i].mes <> 'janeiro') and (cadastro[i].mes <> 'fevereiro') and (cadastro[i].mes <> 'marco') and                        // Forcando a escrever certo.
  (cadastro[i].mes <> 'abril') and (cadastro[i].mes <> 'maio') and (cadastro[i].mes <> 'junho') and (cadastro[i].mes <> 'julho') and
  (cadastro[i].mes <> 'agosto') and (cadastro[i].mes <> 'setembro') and (cadastro[i].mes <> 'outubro') and (cadastro[i].mes <> 'novembro') and (cadastro[i].mes <> 'dezembro'))Do
  Begin
    writeln('');
    writeln('Escreva o mes sem pontuacao e com todas as letras minusculas.');
    Readln(cadastro[i].mes);
  End;
  while(a = '1')Do
  Begin                                                          // Esses ifs estão cuidando da consistência de dados.
    writeln('Digite o dia de aniversario:');
    readln(cadastro[i].dia);
    if((cadastro[i].mes = 'janeiro') or (cadastro[i].mes = 'marco') or (cadastro[i].mes = 'maio') or (cadastro[i].mes = 'julho') or
    (cadastro[i].mes = 'agosto') or (cadastro[i].mes = 'outubro') or (cadastro[i].mes = 'dezembro'))
      then while((cadastro[i].dia < 0) and (cadastro[i].dia > 31))do
             Begin
               writeln('Digite um dia valido.');
               readln(cadastro[i].dia);
             End
		  else if((cadastro[i].mes = 'abril') or (cadastro[i].mes = 'junho') or (cadastro[i].mes = 'setembro') or (cadastro[i].mes = 'novembro'))
             then while((cadastro[i].dia < 0) and (cadastro[i].dia > 30))do
                  Begin
                    writeln('Digite um dia valido.');
                    readln(cadastro[i].dia);
                  End
             else while((cadastro[i].dia < 0) and (cadastro[i].dia > 28))do
                  Begin
                    writeln('Digite um dia valido.');
                    readln(cadastro[i].dia);
                  End;
    a:= '2';
  End;
End;

Procedure Busca(b: char);
Var
  j: Integer;
  mes: string;
Begin
  writeln('Busca de aniversariantes.');
  writeln('Digite o mes que voce deseja encontrar aniversariantes:');
  readln(mes);
  for j:= 1 to 40 do
    if(cadastro[j].mes = mes)
      then Begin
             writeln('Nome do aniversariante: ',cadastro[j].nome);
             writeln('Dia do aniversario: ', cadastro[j].dia);
           End;        
End;

Begin
  writeln('Programa de cadastro. Escolha uma das opções abaixo:');
	funcionamento := true;
  i := 1;
  while(funcionamento = true)Do
  Begin
    writeln('1 - Cadastrar');
    writeln('2 - Buscar');
    writeln('3 - Sair do Programa');
    readln(menu);
    case(menu)Of
      '1': Cadastrar(menu);
      '2': Busca(menu);
      '3': funcionamento := False;
    else  Begin
            writeln('');
            writeln('Digite uma opcao valida. Escolha uma das opções abaixo:');
          End;
    End;
  End;
End.