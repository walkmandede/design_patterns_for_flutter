// ============================================
// Example 1: Basic Singleton with Static Instance
// ============================================
// This is the most traditional way to implement Singleton

class DatabaseHelper {
  // Private static instance variable
  static DatabaseHelper? _instance;

  // Private constructor
  // No external code can call this constructor
  DatabaseHelper._internal();

  // Public static getter to access the instance (global access point)
  static DatabaseHelper get instance {
    _instance ??= DatabaseHelper._internal();
    return _instance!;
  }

  String? database;

  void initDatabase() {
    database = 'Connected to database';
    print('Database initialized');
  }

  void query(String sql) {
    print('Executing: $sql');
  }
}
