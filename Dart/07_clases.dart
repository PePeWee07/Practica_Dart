void main (){
  
  final Hero wolverine = Hero('Logan', 'Regeneracion');
  
  print( wolverine );
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
  Hero (  this.name, this.power ); 
  
}