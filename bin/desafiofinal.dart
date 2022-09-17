import 'dart:io';
import 'package:desafiofinal/desafiofinal.dart';
import 'package:desafiofinal/empresa.dart';
import 'package:desafiofinal/endereco.dart';
import 'package:desafiofinal/opcoes.dart';
import 'package:desafiofinal/socio.dart';

void main() {
  List<Empresa> lista = [];
  int opcao = 0;
  

  do {
    print("\t___________MENU___________");
    print("1 - Cadastrar uma nova empresa");
    print("2 - Buscar Empresa cadastrada por CNPJ");
    print("3 - Buscar Empresa por CPF do Sócio");
    print("4 - Listar empresas cadastradas em ordem alfabética (Razão Social)");
    print("5 - Excluir uma empresa (por ID)");
    print("6 - Sair");
    stdout.write("Opcao: ");

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        lista = cadastrar(lista);
        lista.forEach(print);
        break;

      case 2:
        findCnpj(lista);
        break;

      case 3:
        findCpfSocio(lista);
        break;

      case 4:
        ListarEmpresa(lista);
        break;

      case 5:
        removerPorId(lista);
        lista.forEach(print);
        break;

      case 6:
        print("Aplicação encerrada.");
        break;
    }
  } while (opcao != 6);
}
