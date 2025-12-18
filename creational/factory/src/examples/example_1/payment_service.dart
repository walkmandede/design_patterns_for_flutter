import 'payment_processor.dart';

abstract class PaymentService {
  // Factory Method - subclasses override this to create different products
  PaymentProcessor createProcessor();

  // Template Method that uses the factory method
  void processCheckout(double amount) {
    print('\n${"=" * 50}');
    print('Starting Checkout Process');
    print('${"=" * 50}');

    PaymentProcessor processor = createProcessor();

    print('Payment Method: ${processor.getPaymentType()}');
    print('Amount: \$$amount');

    if (processor.validatePayment()) {
      processor.processPayment(amount);
      print('\n✓ Checkout Complete!');
    } else {
      print('\n✗ Payment validation failed!');
    }

    print('${"=" * 50}\n');
  }
}
