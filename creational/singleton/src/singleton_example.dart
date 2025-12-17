import 'examples/api_client.dart';
import 'examples/db_helper.dart';
import 'examples/logger.dart';
import 'examples/settings_manager.dart';

class SingletonExample {
  void exampleBasicSingleton() {
    // Get the first instance
    var db1 = DatabaseHelper.instance;
    db1.initDatabase();

    // Get the instance again
    var db2 = DatabaseHelper.instance;

    // Both variables point to the same instance
    print('Are they the same instance? ${identical(db1, db2)}'); // true

    db2.query('SELECT * FROM users');
  }

  void exampleFactorySingleton() {
    // Create instance using normal constructor syntax
    var api1 = ApiClient();
    api1.baseUrl = 'https://api.myapp.com';

    // Create another "instance"
    var api2 = ApiClient();

    // Both are the same instance
    print('Are they the same? ${identical(api1, api2)}'); // true
    print('api2 baseUrl: ${api2.baseUrl}'); // https://api.myapp.com

    api2.get('/users');
  }

  Future<void> exampleFlutterSingleton() async {
    // Initialize settings when app starts
    await SettingsManager.instance.init();

    // Access settings anywhere in your app
    var settings1 = SettingsManager.instance;
    print('Current dark mode: ${settings1.isDarkMode}');

    // Change settings
    await settings1.setDarkMode(true);

    // Access from another part of your app
    var settings2 = SettingsManager.instance;
    print('Dark mode in settings2: ${settings2.isDarkMode}'); // true

    // They're the same instance
    print('Same instance? ${identical(settings1, settings2)}'); // true
  }

  void exampleEagerSingleton() {
    // Instance is created as soon as the class is first referenced
    var logger1 = Logger();
    logger1.log('Application started');

    var logger2 = Logger.instance;
    logger2.error('Something went wrong');

    print('Same logger? ${identical(logger1, logger2)}'); // true
  }
}
