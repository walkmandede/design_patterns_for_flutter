import 'payment_processor.dart';

class CreditCardProcessor implements PaymentProcessor {
  final String cardNumber;
  final String cvv;

  CreditCardProcessor({required this.cardNumber, required this.cvv});

  @override
  void processPayment(double amount) {
    print('Processing credit card payment of \$$amount');
    print('Card: ****${cardNumber.substring(cardNumber.length - 4)}');
    print('Connecting to credit card gateway...');
    print('Validating card details...');
    print('Payment authorized!');
  }

  @override
  String getPaymentType() => 'Credit Card';

  @override
  bool validatePayment() {
    return cardNumber.length == 16 && cvv.length == 3;
  }
}
