// ============================================
// Example 2: Singleton with Factory Constructor
// ============================================
// This is the most Dart-idiomatic way

class ApiClient {
  // Private static instance
  static ApiClient? _instance;

  // Private named constructor
  ApiClient._internal();

  // Factory constructor
  // looks like a normal constructor but can return existing instance
  factory ApiClient() {
    _instance ??= ApiClient._internal();
    return _instance!;
  }

  // Class properties
  String baseUrl = 'https://api.example.com';
  Map<String, String> headers = {'Content-Type': 'application/json'};

  Future<void> get(String endpoint) async {
    print('GET: $baseUrl$endpoint');
    // Actual HTTP request would go here
  }

  Future<void> post(String endpoint, Map<String, dynamic> data) async {
    print('POST: $baseUrl$endpoint with data: $data');
    // Actual HTTP request would go here
  }
}
