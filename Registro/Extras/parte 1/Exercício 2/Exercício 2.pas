{

Exerc�cio 2: Fa�a um programa em Pascal para ler os dados (nome, sal�rio, estado civil, sexo, n�mero de
dependentes, cidade e estado de resid�ncia) dos funcion�rios de uma empresa e mostrar uma listagem
de todos os dados dos funcion�rios(as) CASADOS(AS), residentes no RS e com SAL�RIO  acima  de R$ 1.500,00.
Cadastrar no m�ximo 200 funcion�rios.

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