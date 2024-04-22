enum Estado {
  pendiente('Pendiente de revisión'),
  enProceso('En proceso de realización'),
  completado('Tarea completada');

  // Añade una propiedad final para almacenar una descripción.
  final String descripcion;

  // Constructor que permite inicializar la propiedad.
  const Estado(this.descripcion);

  // Añade un método que utiliza la propiedad.
  void imprimirDescripcion() {
    print(descripcion);
  }
}

void main() {
  Estado.enProceso.imprimirDescripcion(); // Imprime: En proceso de realización
}
