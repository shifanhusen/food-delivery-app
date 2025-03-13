import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'light_mode.dart';
import 'dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // Key for shared preferences
  static const String themeKey = 'theme_mode';

  // Initial theme mode
  ThemeMode _themeMode = ThemeMode.light;

  // Getter for current theme mode
  ThemeMode get themeMode => _themeMode;

  // Getter for current theme data
  ThemeData get themeData => _themeMode == ThemeMode.dark ? darkMode : lightMode;

  // Constructor to load saved theme preference
  ThemeProvider() {
    _loadThemePreference();
  }

  // Toggle between light and dark mode
  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _saveThemePreference();
    notifyListeners();
  }

  // Set specific theme mode
  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    _saveThemePreference();
    notifyListeners();
  }

  // Check if dark mode is active
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  // Load theme preference from shared preferences
  Future<void> _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(themeKey) ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  // Save theme preference to shared preferences
  Future<void> _saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(themeKey, _themeMode == ThemeMode.dark);
  }
}