void main() {
  final empleadoTiempoCompleto =
      EmpleadoTiempoCompleto('Juan', 2000, 500); // Bono de 500
  final empleadoTiempoParcial = EmpleadoTiempoParcial('María', 10, 20);

  print(
      'Salario total de ${empleadoTiempoCompleto.nombre}: \$${empleadoTiempoCompleto.calcularSalarioTotal()}');
  print(
      'Salario total de ${empleadoTiempoParcial.nombre}: \$${empleadoTiempoParcial.calcularSalarioTotal()}');
}

//Necesito modelar diferentes tipos de empleados
// -trabajadores tiempo completo
// -trabajadores tiempo parcial

//Funcionalidades comunes
// -Nombre
// -salario base
// -calcularSalarioTotal()

//Los trabajadores a tiempo completo tienen
// -Bono adicional

//Los trabajadores a tiempo parcial tienen
// -Numero de horas trabajas

//CLASE SUPER
abstract class Empleado {
  String nombre;
  double salarioBase;

  Empleado(this.nombre, this.salarioBase);

  double calcularSalarioTotal();
}

//MIXINS
mixin TrabajadorTiempoCompleto on Empleado {
  double bono = 0;
  double calcularSalarioTotal() => salarioBase + bono;
}

mixin TrabajadorTiempoParcial on Empleado {
  int horasTrabajadas = 0;
  double calcularSalarioTotal() => salarioBase * horasTrabajadas;
}

//CLASES DE EMPLEADOS
class EmpleadoTiempoCompleto extends Empleado with TrabajadorTiempoCompleto {
  EmpleadoTiempoCompleto(String nombre, double salarioBase, double bono)
      : super(nombre, salarioBase) {
    this.bono = bono;
  }
}

// Clase concreta para un empleado a tiempo parcial
class EmpleadoTiempoParcial extends Empleado with TrabajadorTiempoParcial {
  EmpleadoTiempoParcial(super.nombre, super.salarioBase, int horasTrabajadas) {
    this.horasTrabajadas = horasTrabajadas;
  }
}
