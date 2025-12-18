import 'export.dart';
import 'notification.dart';

class NotificationFactory {
  static Notification createNotification(String type, String target) {
    switch (type.toLowerCase()) {
      case 'email':
        return EmailNotification(target);
      case 'sms':
        return SMSNotification(target);
      case 'push':
        return PushNotification(target);
      default:
        throw Exception('Unknown notification type: $type');
    }
  }
}
