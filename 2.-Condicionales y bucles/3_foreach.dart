//FOREACH NO NECESITA ESPECIFICAR LA CANTIDAD DE ITERACIONES
//en otros lenguajes se usa la palabra reservada foreach, aqui
//se combina for con in.
void main() {
  String name = 'Educa';

  for (int character in name.codeUnits) {
    print(String.fromCharCode(character));
  }
}
