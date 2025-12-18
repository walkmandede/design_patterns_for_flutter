import 'notification.dart';

class SMSNotification implements Notification {
  final String phoneNumber;

  SMSNotification(this.phoneNumber);

  @override
  void send(String message) {
    print('\nSending SMS Notification');
    print('To: $phoneNumber');
    print('Message: ${format(message)}');
    print('✓ SMS sent!');
  }

  @override
  String format(String message) {
    // Truncate for SMS character limit
    return message.length > 160 ? '${message.substring(0, 157)}...' : message;
  }
}
