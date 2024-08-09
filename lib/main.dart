import 'package:flutter/material.dart';
import 'package:mepay/config/config.dart';
import 'package:mepay/src/src.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MEPAY',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsThemeConfig.msb,
        ),
        useMaterial3: true,
      ),
      home: Page1(),
    );
  }
}
