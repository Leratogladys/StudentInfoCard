import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Info App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Student Card"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // ignore: avoid_print
              print("Settings pressed");
            },
          ),
        ],
      ),
      body: Center(child: Text("Welcome to my first app!")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print("FAB pressed");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class PrintedPhoto extends StatelessWidget {
  final String personName;
  final String dateTaken;

  const PrintedPhoto({
    super.key,
    required this.personName,
    required this.dateTaken,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Person: $personName"), Text("Date: $dateTaken")],
    );
  }
}

class Whiteboard extends StatefulWidget {
  const Whiteboard({super.key});

  @override
  State<Whiteboard> createState() => _WhiteboardState();
}

class _WhiteboardState extends State<Whiteboard> {
  String message = "Hello";
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(message),
        Text("Count: $counter"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              message = "World";
              counter++;
            });
          },
          child: const Text("Change"),
        ),
      ],
    );
  }
}
