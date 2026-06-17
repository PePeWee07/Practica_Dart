

void main() async{
  
  print('Inicio del programa');
  
  try{
   final contenidoArchivo = await descargarArchivo();
   final procesamiento = await procesarArchivo(contenidoArchivo);
   await cargarArchvio(procesamiento);
    
   print('Todas las tareas se han completado correctamente');
  }catch (err) {
    print('Error: $err');
  }
  
  print('Fin del programa');
}


Future<String> descargarArchivo() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Contendio descargado.';
  });
}

Future<String> procesarArchivo(String contenido) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Archivo procesado => $contenido';
  });
}

Future<void> cargarArchvio(String procesado) {
  return Future.delayed(Duration(seconds: 2), () {
    print('Archivo cargado => $procesado');
  });
}