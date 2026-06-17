void main(){
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original: $numbers');
  print('Lenght: ${numbers.length}');
  
  print('List First: ${numbers.first}');
  print('List Last: ${numbers.last}');
  print('List Index: ${numbers[0]}');
  
  print('List Reversed: ${numbers.reversed} \n');
  
  
  final reversedNumbers = numbers.reversed;
  print ('Iterable: $reversedNumbers');
  print ('List: ${reversedNumbers.toList()}');
  print ('Set: ${reversedNumbers.toSet()} \n');
  
  final numberGreaterThan5 = numbers.where( (int num) {
    return num > 5; 
  });
  print ('>5 Iterable: $numberGreaterThan5');
  print ('>5 List: ${numberGreaterThan5.toList()}');
  print ('>5 Set: ${numberGreaterThan5.toSet()}');
  
  
  
  // LISTAS
  
  //Forma de crear una lista
  final List<int> numeros = [0, 1, 2, 3, 4, 5];
  print('$numeros \n');
  
  
  //Acceso a los elemtos
  print(numeros.first);
  print(numeros.last);
  print('${ numeros[3] } \n');
  
  //Agregar elementos
  numeros.add(6);
  print('$numeros \n');
  
  //Eliminar elementos
  numeros.removeAt(0);
  print('$numeros \n');
  
  //Iterar sobre una lista
  for (int numero in numeros) {
    print(numero);
  }
  print('\n');
    
  //SETS  (No se repiten)
  
  //Forma de crear un set  
  final Set<String> colores = {'rojo', 'verde', 'azul'};
  
  //Acceso a los elementos
  print(colores.first);
  print('${colores.last} \n');
  //print('${ colores[2] }'); No se puede acceder con indices ya
  //                          set es un elemento desordenado
  
  //Agregar Elemtos
  colores.add('amarillo');
  print('$colores \n');
  
  //Remover Elemntos
  colores.remove('azul');
  print('$colores \n');
  
  //Iterar un Elemento
  for (String color in colores){
    print(color);
  }
  print('\n');
  
  
//   Ejemplo de cuando elegir cada uno:
// Si estás manejando una lista[] de tareas y necesitas mantener un orden específico y permitir tareas duplicadas, usarías una lista.
// Si estás almacenando nombres de usuarios únicos para autenticación, podrías usar un conjunto{} para asegurarte de que no haya duplicados y para una búsqueda rápida de nombres de usuario.
  
  
}