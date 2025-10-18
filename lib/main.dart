import 'package:flutter/material.dart';


void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const name ='Big bob oreshki';
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(color: Colors.amber ,child: Text('data'))
          ]
        ),
      ));
  }
}

class MyWidgetq extends StatefulWidget {
  const MyWidgetq({super.key});

  @override
  State<MyWidgetq> createState() => _MyWidgetqState();
}

class _MyWidgetqState extends State<MyWidgetq> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}