import 'package:flutter/material.dart';
import 'package:getx/base/App.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second screen'),),
      body: SafeArea(child: Center(child: Text("heelo "))),
    );
  }
}
