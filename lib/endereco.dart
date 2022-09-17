import 'package:uuid/uuid.dart';
import 'package:desafiofinal/empresa.dart';
import 'package:desafiofinal/socio.dart';
import 'package:desafiofinal/opcoes.dart';

class Endereco {
  String logradouro;
  int numero;
  String complemento;
  String bairro;
  String cidade;
  String estado;
  String cep;

  Endereco(this.logradouro, this.numero, this.bairro, this.cidade, this.estado,
      this.complemento, this.cep);

  @override
  String toString() {
    String end = "Logradouro: $logradouro";
    String end1 = "Número: $numero";
    String end2 = "Complemento: $complemento";
    String end3 = "Cidade: $cidade";
    String end4 = "Bairro: $bairro";
    String end5 = "Estado: $estado";
    String end6 = "CEP: $cep";

    return "\n$end\n$end1\n$end2\n$end3\n$end4\n$end5\n$end6/";
  }
}
