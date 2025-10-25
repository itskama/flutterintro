import 'package:flutter/material.dart';

void main() {
  runApp(const NameApp());
}

class NameApp extends StatefulWidget {
  const NameApp({super.key});

  @override
  State<NameApp> createState() => _NameAppState();
}

class _NameAppState extends State<NameApp> {
  var a = 'hello';

  void delayMyText() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      a = 'KNN';
    });
  }

  @override
  void initState() {
    super.initState();
    delayMyText();
  }

  void _onButtonPressed(String type) {
    setState(() {
      a = type;
    });
  }

  void changeMyText(String newText) {
    setState(() {
      a= newText;
    });
 }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                a,
                style: const TextStyle(
                  fontSize: 100,
                  color: Color.fromARGB(255, 205, 0, 109),
                ),
              ),
              const SizedBox(height: 40),

              // ElevatedButton
              ElevatedButton(
                onPressed: () => _onButtonPressed('Elevated'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),
                child: const Text('Elevated Button'),
              ),

              const SizedBox(height: 10),

              // TextButton
              TextButton(
                onPressed: () => _onButtonPressed('Text'),
                child: const Text(
                  'Text Button',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 10),

              // IconButton
              IconButton(
                onPressed: () => _onButtonPressed('Icon'),
                icon: const Icon(Icons.deblur, color: Color.fromARGB(255, 211, 0, 81)),
                iconSize: 40,
              ),

              const SizedBox(height: 10),

              // OutlinedButton
              OutlinedButton(
                onPressed: () => _onButtonPressed('Outlined'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.pinkAccent),
                ),
                child: const Text(
                  'Outlined Button',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextField(
                style:  TextStyle(color: Colors.white),
                onChanged: (k) {
                  changeMyText(k);

                },
              ),
              DropdownButton(items: ['l', 'k', 'k'], onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}

