import "dart:io";
void main(){
  while (true) {
    print('Digite o formato do arquivo: ');
    String arquivo = stdin.readLineSync()!;

    try {
      enviar(arquivo);
      break;
    } catch (e) {
      print(e);
      print('Tente novamente.');
    }
  }
}

void enviar(arquivo){
  List<String> formatos = ['pdf', 'png', 'jpg', 'docx'];
  if(!formatos.contains(arquivo)){
    throw Exception('formato inválido');
  } else {
    print("Upload Completo!");
  }
}