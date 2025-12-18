import 'payment_processor.dart';

class CryptoProcessor implements PaymentProcessor {
  final String walletAddress;
  final String cryptoType;

  CryptoProcessor({required this.walletAddress, required this.cryptoType});

  @override
  void processPayment(double amount) {
    print('Processing $cryptoType payment of \$$amount');
    print('Wallet: ${walletAddress.substring(0, 10)}...');
    print('Broadcasting transaction to blockchain...');
    print('Waiting for confirmations...');
    print('Transaction confirmed!');
  }

  @override
  String getPaymentType() => 'Cryptocurrency ($cryptoType)';

  @override
  bool validatePayment() {
    return walletAddress.length >= 26;
  }
}
