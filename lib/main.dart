import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rust_calculator_app/bridge_generated.dart';
import 'package:flutter_rust_calculator_app/calculator/feature/widget/calculator_widget.dart';

const buildName = 'librust.so';

final dyLib = DynamicLibrary.open(buildName);

final api = RustImpl(dyLib);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorWidget(),
    );
  }
}
