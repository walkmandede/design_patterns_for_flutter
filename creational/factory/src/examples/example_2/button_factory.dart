import 'android_button.dart';
import 'button.dart';
import 'ios_button.dart';
import 'platform_enum.dart';
import 'web_button.dart';

class ButtonFactory {
  static Button createButton(Platform platform) {
    switch (platform) {
      case Platform.ios:
        return IOSButton();
      case Platform.android:
        return AndroidButton();
      case Platform.web:
        return WebButton();
    }
  }
}
