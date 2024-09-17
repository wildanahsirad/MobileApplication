import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/page_one.dart';
import 'package:flutter_basic/pages/page_two.dart';

void main() {
  runApp(const SamplePages());
}

class SamplePages extends StatelessWidget {
  const SamplePages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/second': (context) => const PageTwo(),
      },
    );
  }
}

