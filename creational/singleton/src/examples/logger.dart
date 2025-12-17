// ============================================
// Example 4: Singleton with Eager Initialization
// ============================================
// Instance is created immediately when class loads

class Logger {
  // Create instance immediately
  static final Logger _instance = Logger._internal();

  // Private constructor
  Logger._internal() {
    print('Logger instance created');
  }

  // Factory constructor returns the already-created instance
  factory Logger() => _instance;

  // Convenient static getter
  static Logger get instance => _instance;

  // Logger methods
  void log(String message) {
    print('[LOG] ${DateTime.now()}: $message');
  }

  void error(String message) {
    print('[ERROR] ${DateTime.now()}: $message');
  }

  void warning(String message) {
    print('[WARNING] ${DateTime.now()}: $message');
  }
}
