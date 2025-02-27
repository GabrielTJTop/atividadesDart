import 'dart:io';

double saldo = 0.0;

void main() {
  while (true) {
    print("\nInforme uma opção (deposito, transferencia, retirada, pagamento, sair):");
    String? operacao = stdin.readLineSync()?.toLowerCase();

    if (operacao == "sair") {
      print("Finalizando...");
      break;
    } else if (operacao == "deposito") {
      deposito();
    } else if (operacao == "transferencia") {
      transferencia();
    } else if (operacao == "retirada") {
      retirada();
    } else if (operacao == "pagamento") {
      pagamento();
    } else {
      print("Opção inválida. Tente novamente.");
    }
  }
}

void deposito() {
  double valor = 0.0;
  while (valor <= 0) {
    print("Informe o valor para depósito:");
    String? entrada = stdin.readLineSync();
    
    valor = double.tryParse(entrada ?? '') ?? 0.0;

    if (valor <= 0) {
      print("Valor inválido. Tente novamente.");
    }
  }

  saldo += valor;
  print("Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso.");
  print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
}

void transferencia() {
  if (saldo <= 0) {
    print("Saldo insuficiente para realizar transferência.");
    return;
  }

  double valor = 0.0;
  while (valor <= 0 || valor > saldo) {
    print("Informe o valor para transferência:");
    String? entrada = stdin.readLineSync();
    
    valor = double.tryParse(entrada ?? '') ?? 0.0;

    if (valor <= 0) {
      print("Valor inválido. Tente novamente.");
    } else if (valor > saldo) {
      print("Saldo insuficiente. Tente um valor menor.");
    }
  }

  print("Informe o número da conta do destinatário:");
  String? contaDestino = stdin.readLineSync();

  if (contaDestino != null && contaDestino.isNotEmpty) {
    saldo -= valor;
    print("Transferência de R\$${valor.toStringAsFixed(2)} para a conta $contaDestino realizada com sucesso.");
    print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
  } else {
    print("Conta de destino inválida.");
  }
}

void retirada() {
  if (saldo <= 0) {
    print("Saldo insuficiente para realizar retirada.");
    return;
  }

  double valor = 0.0;
  while (valor <= 0 || valor > saldo) {
    print("Informe o valor para retirada:");
    String? entrada = stdin.readLineSync();
    
    valor = double.tryParse(entrada ?? '') ?? 0.0;

    if (valor <= 0) {
      print("Valor inválido. Tente novamente.");
    } else if (valor > saldo) {
      print("Saldo insuficiente. Tente um valor menor.");
    }
  }

  saldo -= valor;
  print("Retirada de R\$${valor.toStringAsFixed(2)} realizada com sucesso.");
  print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
}

void pagamento() {
  double valor = 0.0;
  while (valor <= 0 || valor > saldo) {
    print("Informe o valor para pagamento:");
    String? entrada = stdin.readLineSync();
    
    valor = double.tryParse(entrada ?? '') ?? 0.0;

    if (valor <= 0) {
      print("Valor inválido. Tente novamente.");
    } else if (valor > saldo) {
      print("Saldo insuficiente. Tente um valor menor.");
    }
  }

  saldo -= valor;
  print("Pagamento de R\$${valor.toStringAsFixed(2)} realizado com sucesso.");
  print("Saldo atual: R\$${saldo.toStringAsFixed(2)}");
}
