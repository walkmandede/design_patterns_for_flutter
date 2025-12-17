// ============================================
// Example 3: Flutter-Specific Singleton (Settings Manager)
// ============================================
// This example shows async initialization common in Flutter

class SettingsManager {
  // Private static instance
  static SettingsManager? _instance;

  // Private constructor
  SettingsManager._internal();

  // Factory constructor
  factory SettingsManager() {
    _instance ??= SettingsManager._internal();
    return _instance!;
  }

  // Convenient static getter
  static SettingsManager get instance => SettingsManager();

  // Settings properties
  bool _isDarkMode = false;
  String _language = 'en';
  int _fontSize = 14;

  // Getters
  bool get isDarkMode => _isDarkMode;
  String get language => _language;
  int get fontSize => _fontSize;

  // Async initialization method
  // Call this once when your app starts
  Future<void> init() async {
    print('Initializing settings...');
    await _loadSettings();
    print('Settings initialized');
  }

  // Private method to load settings from storage
  Future<void> _loadSettings() async {
    // In a real app, you'd use SharedPreferences or database
    // For example:
    // final prefs = await SharedPreferences.getInstance();
    // _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    // _language = prefs.getString('language') ?? 'en';
    // _fontSize = prefs.getInt('fontSize') ?? 14;

    // Simulating async loading
    await Future.delayed(Duration(milliseconds: 100));
    _isDarkMode = false;
    _language = 'en';
    _fontSize = 14;
  }

  // Methods to update settings
  Future<void> setDarkMode(bool value) async {
    _isDarkMode = value;
    // Save to storage
    // await prefs.setBool('isDarkMode', value);
    print('Dark mode set to: $value');
  }

  Future<void> setLanguage(String value) async {
    _language = value;
    // Save to storage
    print('Language set to: $value');
  }

  Future<void> setFontSize(int value) async {
    _fontSize = value;
    // Save to storage
    print('Font size set to: $value');
  }
}
