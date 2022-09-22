// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return newMethod();
  }

  MaterialApp newMethod() {
    return MaterialApp(
      title: 'Flutter Demo - Aula 05',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// ignore: duplicate_ignore
class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  final controller_a = TextEditingController();
  final controller_b = TextEditingController();

  String _TextShowResult = "";

  void sum() {
    int num1 = int.parse(controller_a.text);
    int num2 = int.parse(controller_b.text);

    int result = num1 + num2;

    //print(result);
    setState(() {
      _TextShowResult = result.toString();
    });
  }

  void mult() {
    int num1 = int.parse(controller_a.text);
    int num2 = int.parse(controller_b.text);

    int result = num1 * num2;

    //print(result);
    setState(() {
      _TextShowResult = result.toString();
    });
  }

  void div() {
    int num1 = int.parse(controller_a.text);
    int num2 = int.parse(controller_b.text);

    double result = num1 / num2;

    //print(result);
    setState(() {
      _TextShowResult = result.toString();
    });
  }

  void sub() {
    int num1 = int.parse(controller_a.text);
    int num2 = int.parse(controller_b.text);

    int result = num1 - num2;

    //print(result);
    setState(() {
      _TextShowResult = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cálc"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Calculadora : $_TextShowResult",
            style: const TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 56, 47, 33),
            ),

            // textAlign: TextAlign.center,
          ),
          TextFormField(
            controller: controller_a,
            decoration: const InputDecoration(
              icon: Icon(Icons.calculate),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            controller: controller_b,
            decoration: const InputDecoration(
              icon: Icon(Icons.ac_unit),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.black),
            onPressed: sum,
            child: const Text('Somar'),
          ),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.black),
            onPressed: sub,
            child: const Text('Subtrair'),
          ),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.black),
            onPressed: div,
            child: const Text('Dividir'),
          ),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.black),
            onPressed: mult,
            child: const Text('Multilpicar'),
          )

          // Text("Calc 2"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
