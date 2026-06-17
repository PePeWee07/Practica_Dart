void main () {
  
  final smartphone = Smartphone("Name_Smartphone", 154.3, "SanSung", "A10");
  final laptop = Laptop("Name_Laptop", 1004.35, "Asus", "L42-2");
  
  smartphone.mostrarInfo();
  laptop.mostrarInfo();
  

  laptop.swipeScreen();
  smartphone.takePicture();
  
}


//CLASS
class Product {
  
  String nombre;
  double precio;
  
  Product(this.nombre, this.precio);
  
  void mostrarInfo(){
    print("Nombre: $nombre");
    print("Precio: \$${precio}");
  }
  
}

//SMARTPHONE
class Smartphone extends Product with Camera, TouchScreen{
  
  String marca;
  String modelo;
  
  Smartphone(super.nombre, super.precio, this.marca, this.modelo);
  
  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("Marca: $marca");
    print("Modelo: $modelo");    
  }
  
}

//LAPTOP
class Laptop extends Product with TouchScreen {
  
  String marca;
  String modelo;
  
  Laptop(String nombre, double precio, this.marca, this.modelo): super (nombre, precio);
  
  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("Marca: $marca");
    print("Modelo: $modelo");
    
  }
  
}

//MIXIN
mixin Camera {
  void takePicture(){
    print('Tomando una foto...');
  }
  void fillMovie(){
    print('Grabando pelicula...');
  }
}

mixin TouchScreen {
  void tapScreen(){
    print('Tocar pantalla...');
  }
  void swipeScreen() {
    print('Delizar pantalla...');
  }
}

  
  
  
  
  
  