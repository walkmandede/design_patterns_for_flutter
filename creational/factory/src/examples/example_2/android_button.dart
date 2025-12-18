import 'button.dart';

class AndroidButton implements Button {
  @override
  void render() {
    print('Rendering Android button:');
    print('  - Material Design elevation');
    print('  - Roboto font');
    print('  - Ripple effect');
    print('  - Material blue (#2196F3)');
  }

  @override
  void onClick() {
    print('Android button clicked with ripple animation');
  }

  @override
  String getStyle() => 'Material Design';
}
