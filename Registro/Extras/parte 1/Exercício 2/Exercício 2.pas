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
  cadastrar: char;
	
Procedure Cadastro(a:char);
Var

Begin

End;

Begin
  clrscr;

  repeat until keypressed;
End.