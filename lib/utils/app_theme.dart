import 'package:flutter/material.dart';

class AppTheme {
  // Colors - exact match from EchoVerse Web App
  static const Color primaryColor = Color(0xFFCB33FF);        // Primary Purple
  static const Color primaryLight = Color(0xFFE066FF);        // Lighter Purple
  static const Color primaryDark = Color(0xFFA100CC);         // Darker Purple
  
  // Accent Colors
  static const Color accentPink = Color(0xFFFF3399);          // Neon Pink
  static const Color accentBlue = Color(0xFF33CCFF);          // Neon Blue/Cyan
  static const Color accentGreen = Color(0xFF33FFAA);         // Neon Green
  
  // Background & UI Colors (Dark Mode)
  static const Color backgroundColor = Color(0xFF0C111C);     // Dark Background
  static const Color cardBackground = Color(0xFF0F1419);      // Card Dark
  static const Color inputBackground = Color(0xFF0F1419);     // Same as card
  
  // Text Colors
  static const Color textPrimary = Color(0xFFF8FAFC);         // Light text
  static const Color textSecondary = Color(0xFF94A3B8);       // Muted text
  
  // Border & Divider
  static const Color borderColor = Color(0xFF1E293B);         // Subtle border
  static const Color mutedBackground = Color(0xFF1A202C);     // Muted background
  
  // Status Colors
  static const Color errorColor = Color(0xFFEF4444);          // Red for errors
  static const Color successColor = Color(0xFF10B981);         // Green for success

  // Gradients - matching web UI
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFCB33FF), Color(0xFFFF3399)],           // Purple → Pink
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFF33CCFF), Color(0xFF33FFAA)],           // Cyan → Green
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkGradient = LinearGradient(
    colors: [Color(0xFF0C111C), Color(0xFF0F1419)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Theme Data
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: cardBackground,
      
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: accentPink,
        surface: cardBackground,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimary,
      ),

      // Input decoration theme - iOS 16+ style
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: inputBackground.withOpacity(0.6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: borderColor.withOpacity(0.3), width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: borderColor.withOpacity(0.3), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),

      // Elevated button theme - iOS 16+ style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.2,
          ),
        ),
      ),

      // Outlined button theme - iOS 16+ style
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: textPrimary,
          side: BorderSide(color: borderColor.withOpacity(0.3), width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: inputBackground.withOpacity(0.3),
        ),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
      ),

      // Card theme - iOS 16+ glassmorphism
      cardTheme: CardThemeData(
        color: cardBackground.withOpacity(0.7),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: borderColor.withOpacity(0.2), width: 1),
        ),
      ),

      // Tab bar theme
      tabBarTheme: const TabBarThemeData(
        labelColor: textPrimary,
        unselectedLabelColor: textSecondary,
        indicatorSize: TabBarIndicatorSize.tab,
      ),

      // Text theme
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: textPrimary,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: textPrimary,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 14,
        ),
        labelLarge: TextStyle(
          color: textPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

