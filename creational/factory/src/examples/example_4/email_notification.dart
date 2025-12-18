import 'notification.dart';

class EmailNotification implements Notification {
  final String to;

  EmailNotification(this.to);

  @override
  void send(String message) {
    print('\nSending Email Notification');
    print('To: $to');
    print('Message: ${format(message)}');
    print('✓ Email sent!');
  }

  @override
  String format(String message) {
    return '<html><body><p>$message</p></body></html>';
  }
}
