import 'examples/export.dart';

class FactoryExample {
  void testExample1() {
    print('\n\n>>> EXAMPLE 1: Payment Processing System <<<\n');

    PaymentService creditCard = CreditCardService(cardNumber: '4532123456789012', cvv: '123');
    creditCard.processCheckout(99.99);

    PaymentService paypal = PayPalService(email: 'user@example.com');
    paypal.processCheckout(149.99);

    PaymentService crypto = CryptoService(walletAddress: '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa', cryptoType: 'Bitcoin');
    crypto.processCheckout(299.99);
  }

  void testExample2() {
    print('\n\n>>> EXAMPLE 2: Platform-Specific UI Components <<<\n');

    print('\nCreating iOS Button:');
    print('${"─" * 50}');
    Button iosButton = ButtonFactory.createButton(Platform.ios);
    iosButton.render();
    print('\nSimulating user interaction:');
    iosButton.onClick();

    print('\n\nCreating Android Button:');
    print('${"─" * 50}');
    Button androidButton = ButtonFactory.createButton(Platform.android);
    androidButton.render();
    print('\nSimulating user interaction:');
    androidButton.onClick();

    print('\n\nCreating Web Button:');
    print('${"─" * 50}');
    Button webButton = ButtonFactory.createButton(Platform.web);
    webButton.render();
    print('\nSimulating user interaction:');
    webButton.onClick();
  }

  void testExample3() {
    print('\n\n>>> EXAMPLE 3: Document Creation System <<<\n');

    DocumentCreator pdfCreator = PDFCreator();
    pdfCreator.editDocument('annual_report');

    DocumentCreator wordCreator = WordCreator();
    wordCreator.editDocument('meeting_notes');

    DocumentCreator markdownCreator = MarkdownCreator();
    markdownCreator.editDocument('README');
  }

  void testExample4() {
    print('\n\n>>> EXAMPLE 4: Notification System <<<\n');

    Notification email = NotificationFactory.createNotification('email', 'user@example.com');
    email.send('Your order has been shipped!');

    Notification sms = NotificationFactory.createNotification('sms', '+1234567890');
    sms.send('Your verification code is 123456');

    Notification push = NotificationFactory.createNotification('push', 'device_token_abc123xyz');
    push.send('You have a new message!');

    print('\n');
    print('═' * 70);
    print('DEMONSTRATION COMPLETE');
    print('═' * 70);
    print('\n');
  }
}
