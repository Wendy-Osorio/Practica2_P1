//*Nombre de la escuela: Universidad Teconologica Metropolitana
//*Asignatura: Desarrollo Web Multiplataforma.
//*Nombre del Maestro: Ing. Joel Ivan Chuc Uc.
//*Nombre de la actividad: Ejercicio 4 - Palindromos.
//*Nombre del alumno: Wendy Yazmin Osorio Solis.
//*Cuatrimestre: 5°.
//*Grupo: B.
//*Parcial: 1.

//El índice de masa corporal o IMC de una persona es una medida calculada de su peso con
//relación a su estatura. Este número sirve como una estimación rápida de la grasa corporal.
//Clasifica a las personas en categorías de peso, tales como con bajo peso, con sobrepeso y
//con obesidad.

import 'dart:io';

void main() {
  String espaciosP;
  String respuesta = "S";
  String i;
  int count;

  while (respuesta.toUpperCase() == "s" || respuesta.toUpperCase() == "S") {
    stdout.write("Ingrese una frase: ");

    String frase = stdin.readLineSync()!;

    espaciosP = frase.trim().replaceAll(" ", " ");

    count = frase.split(' ').length;

    i = espaciosP.toLowerCase();

    String invertir = i.split('').reversed.join('');

    if (i == invertir) {
      print("La palabra $frase es un palindromo. Número de palabras: $count.");
    } else {
      print(
          "La palabra $frase no es un palindromo. Número de palabras: $count.");
    }

    stdout.write("¿Deseas realizar otra consulta? S/N: ");
    respuesta = stdin.readLineSync()!;
  }
  print("Gracias por usar el programa.");
}
