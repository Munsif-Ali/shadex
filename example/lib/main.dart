import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shadex/shadex.dart';

void main() {
  runApp(const ShadexExampleApp());
}

class ShadexExampleApp extends StatelessWidget {
  const ShadexExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shadex Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShadexExampleScreen(),
    );
  }
}

class ShadexExampleScreen extends StatelessWidget {
  const ShadexExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shadex Demo')),
      body: PageView(
        children: [
          Center(
            child: Shadex(
              shadowColor: Colors.blueAccent,
              shadowOffset: const Offset(10, 10),
              child: SvgPicture.asset(
                'assets/flutter_logo.svg',
                width: 200,
                height: 200,
              ),
            ),
          ),
          Center(
            child: Shadex(
              shadowColor: Colors.grey,
              shadowOffset: const Offset(13, 13),
              shadowBlurRadius: 3,
              child: Image.asset(
                'assets/Capture2.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          const Center(
            child: Shadex(
              shadowColor: Colors.blueAccent,
              shadowOffset: Offset(10, 10),
              child: Icon(
                Icons.flutter_dash,
                size: 200,
                color: Colors.blue,
              ),
            ),
          ),
          const Center(
            child: Shadex(
              shadowColor: Colors.black38,
              shadowBlurRadius: 2,
              shadowOffset: Offset(3, 3),
              child: Text(
                'Shadex',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
