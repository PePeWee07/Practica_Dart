/* 
Imagina que estás desarrollando un sistema 
que permite procesar pagos a través de diferentes métodos: 
tarjeta de crédito, PayPal y criptomonedas. Cada método de pago 
tiene una forma diferente de procesar el pago, pero todos deberían 
seguir un contrato común.
*/

void main () {

  final CreditCard creditCard = CreditCard(initialAmount: 100);
  makePayment(creditCard, 50);

  final PayPal payPal = PayPal(initialAmount: 200);
  makePayment(payPal, 100);

}

//!Principio de inversión de dependencias (DIP)
void makePayment(PaymentMethod method, double amount){
  if (method.cash < amount){
    throw Exception('Not enough cash');
  }

  method.procesPayment(amount);
}

// ABSTRACT CLASS
abstract class PaymentMethod {
  double cash;

  PaymentMethod({required this.cash});

  void procesPayment(double amount);
}

// EXTENDS
class CreditCard extends PaymentMethod {
  CreditCard({required double initialAmount})
    : super(cash: initialAmount);

  @override
  void procesPayment(double amount) {
    cash -= amount;
    print('Credit Card processed per ${amount}, total: $amount');
  }
}

class PayPal extends PaymentMethod {
  PayPal({required double initialAmount})
    : super(cash: initialAmount);

  @override
  void procesPayment(double amount) {
    cash -= amount;
    print('PayPal processed per ${amount}, total: $amount');
  }
}