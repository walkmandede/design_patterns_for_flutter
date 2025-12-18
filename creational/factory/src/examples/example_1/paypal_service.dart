import 'payment_processor.dart';
import 'payment_service.dart';
import 'paypal_processor.dart';

class PayPalService extends PaymentService {
  final String email;

  PayPalService({required this.email});

  @override
  PaymentProcessor createProcessor() {
    return PayPalProcessor(email: email);
  }
}
