import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:desafiofinal/empresa.dart';
import 'package:desafiofinal/endereco.dart';
import 'package:desafiofinal/socio.dart';
import 'package:uuid/uuid.dart';

Endereco lerEndereco() {
  stdout.write("Logradouro: ");
  String logradouro = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Numero: ");
  int numero = int.parse(stdin.readLineSync(encoding: utf8)!);
  stdout.write("Complemento: ");
  String complemento = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Bairro: ");
  String bairro = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Cidade: ");
  String cidade = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Estado(ex:PE): ");
  String estado = stdin.readLineSync(encoding: utf8)!;
  stdout.write("CEP: ");
  String cep = stdin.readLineSync(encoding: utf8)!;

  Endereco endereco =
      Endereco(logradouro, numero, bairro, cidade, estado, complemento, cep);

  return endereco;
}

Socio lerSocio() {
  print("\t_________CADASTRO SÓCIO_________");
  stdout.write("Nome do sócio: ");
  String nomeSocio = stdin.readLineSync(encoding: utf8)!;
  stdout.write("CPF: ");
  String cpfDoSocio = stdin.readLineSync(encoding: utf8)!;
  Endereco endereco = lerEndereco();

  Socio socio =
      Socio(nomeSocio: nomeSocio, cpfDoSocio: cpfDoSocio, endereco: endereco);
  return socio;
}

List<Empresa> cadastrar(List<Empresa> e) {
  List<Empresa> aux = e;

  print("\t_________CADASTRO EMPRESA_________");
  stdout.write("Informe o CNPJ: ");
  String cnpj = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Informe o nome fantasia: ");
  String nomeFantasia = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Informe a razão social: ");
  String razaoSocial = stdin.readLineSync(encoding: utf8)!;
  stdout.write("Telefone: ");
  String telefone = stdin.readLineSync(encoding: utf8)!;
  Endereco endereco = lerEndereco();

  Empresa emp = Empresa(
      cnpj: cnpj,
      nomeFantasia: nomeFantasia,
      razaoSocial: razaoSocial,
      endereco: endereco,
      telefone: telefone,
      socio: lerSocio());

  aux.add(emp);
  String Now() {
    final agora = DateTime.now();
    return agora.toString();
  }

  print("\t\nEmpresa cadastrada com sucesso! ${Now()}");

  return aux;
}

void findCnpj(List<Empresa> e) {
  stdout.write("Informe o CNPJ da empresa que deseja encontrar:  ");
  String cnpjAux = stdin.readLineSync(encoding: utf8)!;

  for (int i = 0; i < e.length; i++) {
    if (cnpjAux == e[i].cnpj) {
      print("Empresa encontrada! ${e[i]}");
      i = e.length;
    }
  }
}

void findCpfSocio(List<Empresa> e) {
  stdout.write("Informe o CPF do sócio que deseja encontrar:  ");
  String cpfAux = stdin.readLineSync(encoding: utf8)!;

  for (int i = 0; i < e.length; i++) {
    if (cpfAux == e[i].socio.cpfDoSocio) {
      print("Empresa encontrada! ${e[i]}");
      i = e.length;
    }
  }
}

void ListarEmpresa(List<Empresa> e) {
  e.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
  print("\t_________LISTA DE EMPRESAS_________");
  print("$e");
}

void removerPorId(List<Empresa> e) {
  bool find = false;
  stdout.write("Informe a ID da empresa que deseja remover:  ");
  String idAux = stdin.readLineSync(encoding: utf8)!;
  for (int i = 0; i < e.length; i++) {
    if (idAux == e[i].id) {
      print("Empresa encontrada: ${e[i]}");
      find = true;
      i = e.length;

      print("Deseja remover empresa?[s/n]");
      String resp = stdin.readLineSync(encoding: utf8)!;
      if (resp == "s") {
        e.removeWhere((element) => element.id == idAux);
        print("Empresa removida!");
      }
      if (resp == "n") {
        print("Remoção cancelada!");
      }
    }
  }
  if (!find) {
    print("Empresa não encontrada!");
  }
}

void validarCnpj(outro) {
  RegExp validarCnpj = RegExp("[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}");
  print(validarCnpj.hasMatch(outro));
}

void validarCpf(outro) {
  RegExp validarCpf = RegExp("[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}");
  if (validarCpf.hasMatch(outro));
}
