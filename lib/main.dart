import 'package:chaos/screens/home_screen.dart';
import 'package:chaos/screens/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chaos());
}

class Chaos extends StatelessWidget {
  const Chaos({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chaos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: LoadingScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        LoadingScreen.id: (context) => const LoadingScreen()
      },
    );
  }
}
