import 'package:flutter/material.dart';
import 'package:realestate_ui/screens/home_tab/home_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Montserrat",
        useMaterial3: true,
      ),
      home: const HomeTabView(),
    );
  }
}