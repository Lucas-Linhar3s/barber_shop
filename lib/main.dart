import 'package:barber_shopp/app/shared/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFDAEC76)),
        useMaterial3: true,
      ),
      routes: kRoutes,
      initialRoute: '/',
    );
  }
}
