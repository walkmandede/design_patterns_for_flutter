import 'credit_card_processor.dart';
import 'payment_processor.dart';
import 'payment_service.dart';

class CreditCardService extends PaymentService {
  final String cardNumber;
  final String cvv;

  CreditCardService({required this.cardNumber, required this.cvv});

  @override
  PaymentProcessor createProcessor() {
    return CreditCardProcessor(cardNumber: cardNumber, cvv: cvv);
  }
}
