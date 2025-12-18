import 'notification.dart';

class PushNotification implements Notification {
  final String deviceToken;

  PushNotification(this.deviceToken);

  @override
  void send(String message) {
    print('\nSending Push Notification');
    print('To device: ${deviceToken.substring(0, 10)}...');
    print('Message: ${format(message)}');
    print('✓ Push notification sent!');
  }

  @override
  String format(String message) {
    return '{"title": "Alert", "body": "$message"}';
  }
}
