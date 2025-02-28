import 'dart:io';

void main() {
  String metodoPagamento = solicitarMetodoPagamento();
  print('Você escolheu: $metodoPagamento');
}

String solicitarMetodoPagamento() {
  List<String> metodosValidos = ['cartao', 'boleto', 'paypal', 'pix'];
  String? escolha;

  do {
    print('Escolha um método de pagamento: ${metodosValidos.join(', ')}');
    escolha = stdin.readLineSync()?.toLowerCase();
    
    if (escolha == null || !metodosValidos.contains(escolha)) {
      print('Método inválido. Tente novamente.\n');
    }
  } while (escolha == null || !metodosValidos.contains(escolha));

  return escolha;
}
