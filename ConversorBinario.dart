//*Nombre de la escuela: Universidad Teconológica Metropolitana
//*Asignatura: Desarrollo Móvil Multiplataforma.
//*Nombre del Maestro: Ing. Joel Ivan Chuc Uc.
//*Nombre de la actividad: Ejercicio 1 - Calcular salario semana.
//*Nombre del alumno: Wendy Yazmin Osorio Solis.
//*Cuatrimestre: 5°.
//*Grupo: B.
//*Parcial: 1.

//Crear un programa en Dart que transforme un numero decimal a su equivalencia en binario,
//por ejemplo,si usamos el método de la división sucesiva para calcular el valor binario
//del número 12, comenzaremos dividiendo 12 entre 2, luego cada cociente resultante se divide
//por 2 hasta que se obtiene un cociente cuya parte entera es 0.
//Decimal 12
//Binario 1100

import 'dart:io';

void main() {
  int divisor = 2;

  int resto = 0;

  int i = 1;

  var respuesta = "S";

  print("");

  while (respuesta.toUpperCase() == "S" || respuesta.toUpperCase() == "s") {
    stdout.write("Ingrese el número a convertir en binario: ");
    int numDecimal = int.parse(stdin.readLineSync()!);

    while (numDecimal < 0) {
      print(
          "¡ERROR!: No se admiten números menores a cero...intentalo nuevamente");

      stdout.write("Ingrese el número a convertir en binario: ");
      numDecimal = int.parse(stdin.readLineSync()!);
    }

    while (numDecimal > 0) {
      resto = resto + (numDecimal % divisor) * i;
      numDecimal = (numDecimal / 2).floor();
      i = i * 10;
    }

    print("resultado: $resto");

    print("");

    stdout.write("¿Desea volver a intentarlo? S/N: ");
    respuesta = stdin.readLineSync()!;

    resto = 0;
    numDecimal = 0;
    i = 1;
  }
  print("");
  print("Gracias por usar el programa.");
}
