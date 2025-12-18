import 'crypto_processor.dart';
import 'payment_processor.dart';
import 'payment_service.dart';

class CryptoService extends PaymentService {
  final String walletAddress;
  final String cryptoType;

  CryptoService({required this.walletAddress, this.cryptoType = 'Bitcoin'});

  @override
  PaymentProcessor createProcessor() {
    return CryptoProcessor(walletAddress: walletAddress, cryptoType: cryptoType);
  }
}
