import 'package:desafiofinal/endereco.dart';
import 'package:desafiofinal/empresa.dart';
import 'package:uuid/uuid.dart';
import 'package:desafiofinal/opcoes.dart';
import 'package:desafiofinal/socio.dart';

class Socio {
  String nomeSocio;
  String cpfDoSocio;
  Endereco endereco;
  Socio(
      {required this.nomeSocio,
      required this.cpfDoSocio,
      required this.endereco});

  @override
  String toString() {
    String n = "Nome do sócio: $nomeSocio";
    String n1 = "Cpf: $cpfDoSocio";
    String n2 = "Endereço: $endereco";

    return "\n$n\n$n1\n$n2";
  }
}
