import 'package:flutter/material.dart';
import 'package:tinder_ui/challengers/tinder_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, Widget Function(BuildContext context)> routers = {
      '/': (context) => const TinderUI(),
    };
    return MaterialApp(
      routes: routers,
      theme: ThemeData(
        fontFamily: 'Montserrat_Black',
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
      ),
      body: const TinderUI(),
    );
  }
}
