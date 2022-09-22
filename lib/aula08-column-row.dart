import 'package:flutter/material.dart';

import 'aula04.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aula 07 - Column e Row"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Alciomar"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: const Text("Aula 01"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: const Text("Aula 02"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: const Text("Aula 04"),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => const MyApp04()),
                );
              },
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.orange,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.indigo,
              width: 50,
              height: 50,
            ),
            Row(
              children: [
                Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
               
              ],
            )
          ],
        ),
      ),
    );
  }
}
