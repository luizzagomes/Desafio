import 'package:desafiofinal/endereco.dart';
import 'package:uuid/uuid.dart';
import 'package:desafiofinal/socio.dart';
import 'package:desafiofinal/opcoes.dart';
import 'package:desafiofinal/desafiofinal.dart';

class Empresa {
  final id = Uuid().v4();
  String razaoSocial;
  String nomeFantasia;
  String cnpj;
  String telefone;
  Endereco endereco;
  Socio socio;

  Empresa(
      {required this.cnpj,
      required this.nomeFantasia,
      required this.razaoSocial,
      required this.endereco,
      required this.telefone,
      required this.socio});

  @override
  String toString() {
    String aux = "ID: $id";
    String aux1 = "CNPJ: $cnpj";
    String aux2 = "Nome Fantasia: $nomeFantasia";
    String aux3 = "Razão Social: $razaoSocial";
    String aux4 = "Telefone: $telefone";
    String aux5 = "Endereço: $endereco";
    String aux6 = "Sócio: $socio";

    return "\n$aux\n$aux1\n$aux2\n$aux3\n$aux4\n$aux5\n$aux6";
  }
}
