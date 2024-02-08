void main (){
  
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  
  print( wolverine.toString() );
  print( wolverine.power );
  print( wolverine.name );
  
  
}

class Hero {
  
  String name;
  String power;
  
  //Primera forma
  //Hero( String pName, String pPower ): 
  //  this.name = pName,
  //  power = pPower;
  
  //Segunda Forma
  Hero ({
      required this.name,
      this.power = "Sin poder"
    } ); 
  
  
  //Sobreescribir el comportamiento nativo necesitamos @override
  @override
  String toString() {
    return '$name -- $power';
  }
}