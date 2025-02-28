//Atividade3 -- não sei sé ta correta mais bora tentar, "Calendário".
import 'dart:io';

//
void main() {
  print('Calendário que eu espero que de certo!');
  solicitarMes(); //Vai ta fazendo a chamada da função solicitarMes pro usuário.
}

//Função recursiva que foi pedida, Vai Solicitar é validar a entrada do usuário
void solicitarMes() {
  print('Digite um numero de 1 a 12 para saber o Mês:');

  String? input = stdin.readLineSync(); //Ler a entrada do Usuario
//Aqui a função try vai ta sendo usada pra tentar converter "numero" par inteiro é Mes para "String"
  try {
    int numero = int.parse(input!);
    String mes = obterMes(numero);
//Coloquei um If pra saber sé é verificado o Mês vai esta sendo válido
    if (mes.contains("inválido")) {
      print(mes); //print usado pra ixibir a mensagem Mês
      solicitarMes(); // chamada recursiva pra fazer uma nova tentativa
    } else {
      print("O mês correspondete é: $mes");
    }
    //função catch usada pra inválidar como letras ou símbolos
  } catch (e) {
    print("Entrada inválida! Porfavor, insira algum Número.");
    solicitarMes(); // Novamente uma chamada recursiva pra fazer outra tentativa
  }
}

// essa função aqui vai ta fazendo que retorne o Mês de acordo com o numero escolhido
String obterMes(int numero) {
  switch (numero) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return 'Número inválido. Por favor, insira um número de 1 a 12.';
  }
}
//foi feito metade dele pela madrugrada 02:00
// código terminado 09:57 do dia 28/02/2025.
