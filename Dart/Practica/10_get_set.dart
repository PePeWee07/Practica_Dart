void main () {
  
  final mySquare = Square( side:10 );
  //print(mySquare.calculateArea());
  
  //print(mySquare.area);
  
  //Reasignamos el valor de 10 a 5 desde el metodo 
  mySquare.sideGet = 5;
  //print ('area: ${ mySquare.area }'); 
  
  
  //Uso del constructor2 con ASSERTS
  final mySquare2 = Square.num2( side:-2 );
  print(mySquare2.area);
  
}

class Square {
  
  //propiedad _ privada _side
  double _side;
  
  //constructor1
  Square( { required double side } ):
    _side = side;
  
  //Constructor2
  Square.num2( { required double side } ):
    assert( side >=0, 'Side must be >=0'),
      _side = side;
  
  
  
  // Utilizando los get an set
  double get area {
    return _side * _side;
  }
  //Controlo
  set sideGet(double value) {
    print('setting new value $value');
    if ( value<0 ) throw 'Value must be >=0';
    
    _side = value;
     print ('area: $area'); 
  }
  
  
  
  //Forma de hacerlo si get y set 
  double calculateArea() {
    return _side * _side;
  }
  
}