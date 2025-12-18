import 'payment_processor.dart';

class PayPalProcessor implements PaymentProcessor {
  final String email;

  PayPalProcessor({required this.email});

  @override
  void processPayment(double amount) {
    print('Processing PayPal payment of \$$amount');
    print('Account: $email');
    print('Redirecting to PayPal...');
    print('Waiting for PayPal authentication...');
    print('Payment confirmed!');
  }

  @override
  String getPaymentType() => 'PayPal';

  @override
  bool validatePayment() {
    return email.contains('@');
  }
}
