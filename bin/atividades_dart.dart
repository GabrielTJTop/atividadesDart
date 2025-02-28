import 'dart:io';
// Atividade realizada por Rodrigo dos Santos Amaral 01704825
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
