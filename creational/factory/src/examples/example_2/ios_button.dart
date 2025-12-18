import 'button.dart';

class IOSButton implements Button {
  @override
  void render() {
    print('Rendering iOS button:');
    print('  - Rounded corners (12px)');
    print('  - San Francisco font');
    print('  - Subtle shadow');
    print('  - System blue (#007AFF)');
  }

  @override
  void onClick() {
    print('iOS button tapped with haptic feedback');
  }

  @override
  String getStyle() => 'Cupertino Style';
}
