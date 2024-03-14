void main (){
  List<String> menuVeganosAndVegetarianos = ['brocoli', 'pimineto', 'albaca'];
  final veganosAndVegetarianos = TiendaVegetales(nombre: 'Jose', edad:'23', menu: menuVeganosAndVegetarianos);
  
  
  veganosAndVegetarianos.alimentoVege();
  veganosAndVegetarianos.alimentoVega();
  veganosAndVegetarianos.yoSoloComo();
  
}

//super class
abstract class Persona {
  late String nombre;
  late int edad;
  
  Persona({required nombre, required edad});
  
  void yoSoloComo();
}

//mixins
mixin vegetarianos {
 void alimentoVege() =>  print('Solo como vegetales');
}

mixin veganos {
 void alimentoVega() => print('No como carne');
}

mixin mixto {
  void alimentoMixto() => print('Como de todo');
}

//class
 class TiendaVegetales extends Persona with vegetarianos, veganos {
   late List<String> menu;
   
   TiendaVegetales({nombre, edad, menu}): super (nombre:nombre, edad:edad);
   
   @override
    yoSoloComo() {
     print('YO SOLO PURO: $menu');
   }
 }

 class TiendaCarnes extends Persona with mixto {
   late List<String> menu;
   
   TiendaCarnes({nombre, edad, menu}): super (nombre:nombre, edad:edad);
   
   @override
   yoSoloComo() {
     print('YO SOLO PURO: $menu');
   }
 }