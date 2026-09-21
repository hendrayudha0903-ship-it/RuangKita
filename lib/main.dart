import 'package:flutter/material.dart';

import 'modul02/studi_kasus/ruang_praktikum.dart';

void main() {
  runApp(const RuangKitaApp());
}

class RuangKitaApp extends StatefulWidget {
  const RuangKitaApp({super.key});

  @override
  State<RuangKitaApp> createState() => _RuangKitaAppState();
}

class _RuangKitaAppState extends State<RuangKitaApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RuangKita',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
      ),

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: RuangPraktikumPage(
        onToggleTheme: toggleTheme,
        isDarkMode: isDarkMode,
      ),
    );
  }
}