# DART-CHEATSHEET
### This is my summary of Dart Language.

>OJO: Si creamos archivos .dart por separado como aqui y queremos ejecutarlos de manera independiente, debemos hacerlo desde la terminal con el comando: `dart nombreArchivo.dart`. Porque si ejecutamos en `run without debugging` se crea una carpeta con un archivo json con el siguiente mensaje: `Set the 'program' value in your launch config (eg 'bin/main.dart') then launch again` esto indica que dart esta buscando la carpeta `bin` y dentro de esta, el archivo `main.dart` y como no encuentra no sabe que archivo ejecutar.Y esto es porque debemos crear un proyecto dart.

### Pasos para crear un proyecto dart
+ Ir a View
+ Command Pallete
+ Dart: New Project
+ Console Application(aplicacion de linea de comandos)

>Aqui creara unos archivos y creara la `carpeta bin` dentro de la cual iran los `archivos .dart` a ejecutarse, aqui si corre normalmente el `run without debugging` en la `DEBUG CONSOLE` y ya no en la terminal. 