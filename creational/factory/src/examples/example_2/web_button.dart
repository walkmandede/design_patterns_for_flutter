import 'button.dart';

class WebButton implements Button {
  @override
  void render() {
    print('Rendering Web button:');
    print('  - Hover effects');
    print('  - CSS transitions');
    print('  - Cursor pointer');
    print('  - ARIA labels');
  }

  @override
  void onClick() {
    print('Web button clicked');
  }

  @override
  String getStyle() => 'HTML/CSS Style';
}
