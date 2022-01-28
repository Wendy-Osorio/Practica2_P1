//*Nombre de la escuela: Universidad Teconologica Metropolitana
//*Asignatura: Desarrollo Web Multiplataforma.
//*Nombre del Maestro: Ing. Joel Ivan Chuc Uc.
//*Nombre de la actividad: Ejercicio 1 - Calcular salario semana.
//*Nombre del alumno: Wendy Yazmin Osorio Solis.
//*Cuatrimestre: 5°.
//*Grupo: B.
//*Parcial: 1.

//Crear un programa con Dart que dado un número de horas
//trabajadas a la semana calcule el salario de
//un empleado. Después de 40 horas trabajadas se deben pagar horas extra.
//El salario por hora es de $120 y el salario por hora extra es de $175.
//Si las horas trabajadas son menores a 27 se debe desplegar
//un aviso indicando que se le va a levantar un acta administrativa,
//cuando el empleado acumule 2 actas
//administrativas se le debe informar de su despido.

import 'dart:io';

void main() {
  //variables

  int hrs_extrasTrab;

  int acta_admin = 0; //contador

  int pagoSemanal; // Salario total del empleado

  int hrs_extras = 40; // horas que se consideren extras

  int hrs_minimas = 27; // horas que se consideren minimas

  String status = "Laborando.";

  var respuesta = "S";

  stdout.write("Ingrese el nombre del empleado: ");
  String? nombre = stdin.readLineSync()!;

  while (acta_admin < 2 && respuesta.toUpperCase() == "S" ||
      respuesta.toUpperCase() == "s") {
    print("");

    stdout.write("Ingrese las horas trabajadas: ");
    int hrs_trabajadas = int.parse(stdin.readLineSync()!);

    while (hrs_trabajadas < 0) {
      print(
          "¡ERROR!: No se admiten horas laborales menores a cero...Intentelo nuevamente.");
      print("");
      stdout.write("Ingrese las horas trabajadas: ");
      int hrs_trabajadas = int.parse(stdin.readLineSync()!);
    }

    print("");

    stdout.write("Ingrese el salario por hora: ");
    int salario_hrs = int.parse(stdin.readLineSync()!);

    print("");

    stdout.write("Ingrese el salario por horas extras: ");
    int salario_hrsEx = int.parse(stdin.readLineSync()!);

    print("");

    if (hrs_trabajadas > hrs_extras) {
      hrs_extrasTrab = hrs_trabajadas - hrs_extras;

      pagoSemanal = hrs_extrasTrab * salario_hrsEx;

      print("");
      print("Información del empleado: ");
      print("");
      print(
          "Empleado: $nombre.\n Horas trabajadas: $hrs_trabajadas hrs.\n Horas extras: $hrs_extrasTrab hrs.\nSalario alcanzado: $pagoSemanal pesos.\n Actas administrativas: $acta_admin. \n Status: $status");
    } else {
      if (hrs_trabajadas < hrs_minimas && hrs_trabajadas >= 0) {
        print(
            "¡ADVERTENCIA!: El o la empleado(a) $nombre no cumplio con su jornada de trabajo...se levanta acta administrativa.");

        acta_admin++;

        hrs_extrasTrab = 0;

        pagoSemanal = salario_hrs * hrs_trabajadas;

        print("Información del empleado: ");
        print("");
        print(
            "Empleado: $nombre.\n Horas trabajadas: $hrs_trabajadas hrs.\n Horas extras: $hrs_extrasTrab hrs.\nSalario alcanzado: $pagoSemanal pesos.\n Actas administrativas: $acta_admin. \n Status: $status");
      } else {
        if (hrs_trabajadas <= hrs_extras && hrs_trabajadas >= hrs_minimas) {
          pagoSemanal = salario_hrs * hrs_trabajadas;

          hrs_extrasTrab = 0;

          print("Información del empleado: ");
          print("");
          print(
              "Empleado: $nombre.\n Horas trabajadas: $hrs_trabajadas hrs.\n Horas extras: $hrs_extrasTrab hrs.\nSalario alcanzado: $pagoSemanal pesos.\n Actas administrativas: $acta_admin. \n Status: $status");
        }
      }
    }
    if (acta_admin < 2) {
      stdout
          .write("¿Desea realizar otra consultar  al empleado $nombre? S/N: ");
      respuesta = stdin.readLineSync()!;
    } else {
      print(
          "¡IMPORTANTE!: El empleado $nombre tiene 2 actas administrativas...El empleado debe ser despedido.");

      status = "Despedido";

      print("Cambiando status...\n estatus actual: $status");
    }
  }
}
