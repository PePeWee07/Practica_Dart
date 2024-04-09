void main () {
  
  actualizarEstado(Estado.enProceso);
  
}

void actualizarEstado(Estado estado) {
  
  switch(estado) {
    case Estado.pendiente:
      print('El estado es pediente');
      break;
    case Estado.enProceso:
      print('El estado esta en proceso');
      break;
    case Estado.completado:
      print('El estado fue completado');
      break;
  }
  
}

enum Estado{
  pendiente,
  enProceso,
  completado
}