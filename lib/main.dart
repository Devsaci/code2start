import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: myCounter(context),
      ),
    );
  }

  Widget? myCounter(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              icon: const Icon(
                Icons.remove,
                size: 50,
                color: Colors.blue,
              ),
            ),
            Text(
              'myCounter  $counter',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              icon: const Icon(
                Icons.add,
                size: 50,
                color: Colors.red,
              ),
            ),
          ],
        );
      },
    );
  }
}
