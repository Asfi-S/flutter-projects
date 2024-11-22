import 'package:flutter/material.dart';
import 'page.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Нотатки',

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
        ),

        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 16),
          ),
        ),

        cardTheme: const CardTheme(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ),

      home: NotesScreen(),
    );
  }
}