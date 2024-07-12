import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: Colors.primaries
                .map((e) => Container(
                      color: e,
                      width: 100,
                      height: 100,
                    ))
                .toList(),
          ),
        ),
      );
}
