 // sistema de estoque e categorias de produtos de uma loja de eletronicos.

import 'dart:io';

void main() {
  
  
  List<String> categoriasValidas = ["desktop", "notebook", "smartphone", "tablet"];
  String? categoria; 

  do {
   
    print("Digite a categoria do produto (desktop, notebook. smartphone, tablet):");
    categoria = stdin.readLineSync(); 

    
    if (categoriasValidas.contains(categoria)) {
      print("Categoria válida: $categoria");
    } else {
      print("Categoria inválida");
    }
  } while (!categoriasValidas.contains(categoria));
}