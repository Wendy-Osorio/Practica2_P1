//*Nombre de la escuela: Universidad Teconologica Metropolitana
//*Asignatura: Desarrollo Web Multiplataforma.
//*Nombre del Maestro: Ing. Joel Ivan Chuc Uc.
//*Nombre de la actividad: Ejercicio 3 - Calcular IMC.
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
  double peso;
  double altura;
  double alturaFinal;
  double imc;
  String respuesta = "s";
  String composicionC;

  print("");
  while (respuesta.toUpperCase() == "S" || respuesta.toUpperCase() == "s") {
    stdout.write("Ingrese su nombre: ");
    String nombre = stdin.readLineSync()!;

    print("");
    stdout.write("Ingrese su peso actual(kg - ejemplo: 43.0): ");
    peso = double.parse(stdin.readLineSync()!);

    while (peso < 0) {
      print(
          "¡ERROR!: No se admiten números menores a cero...intentelo nuevamente.");
      print("");

      stdout.write("Ingrese su peso actual(kg - ejemplo: 43.0): ");
      peso = double.parse(stdin.readLineSync()!);
    }

    print("");
    stdout.write("Ingrese su altura actual(m - ejemplo: 1.50): ");
    altura = double.parse(stdin.readLineSync()!);

    while (altura < 0) {
      print(
          "¡ERROR!: No se admiten números menores a cero...intentelo nuevamente.");
      print("");

      stdout.write("Ingrese su altura actual: ");
      peso = double.parse(stdin.readLineSync()!);
    }
    print("");

    imc = peso / (altura * altura);

    if (imc < 18.5) {
      composicionC = "Peso inferior al normal.";
      print("Resultado: \n");
      print(
          "nombre: $nombre.\nPeso actual: $peso kg.\nAltura actual: $altura m.\nIMC: $imc.\nComposición corporal: $composicionC");
    } else {
      if (imc >= 18.5 && imc <= 24.9) {
        composicionC = "Peso normal.";
        print("Resultado: \n");
        print(
            "nombre: $nombre.\nPeso actual: $peso kg.\nAltura actual: $altura m.\nIMC: $imc.\nComposición corporal: $composicionC");
      } else {
        if (imc >= 25.0 && imc <= 29.0) {
          composicionC = "Peso superior al normal.";
          print("Resultado: \n");
          print(
              "nombre: $nombre.\nPeso actual: $peso kg.\nAltura actual: $altura m.\nIMC: $imc.\nComposición corporal: $composicionC");
        } else {
          if (imc > 30) {
            composicionC = "Obsesidad.";
            print("Resultado: \n");
            print(
                "nombre: $nombre.\nPeso actual: $peso kg.\nAltura actual: $altura m.\nIMC: $imc.\nComposición corporal: $composicionC");
          }
        }
      }
    }

    print("");
    stdout.write("¿Desea realizar otra consulta? S/N: ");
    respuesta = stdin.readLineSync()!;
  }
  print("");
  print("Gracias por usar el programa.");
}
