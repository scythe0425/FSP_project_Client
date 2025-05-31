import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 104, 138, 239)),
      ),
      home: const MyHomePage(title: 'f'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['a','b','c','d'];
    final List<String> links = <String>['https://example.com/a', 'https://example.com/b', 'https://example.com/c', 'https://example.com/d'];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ListView Demo"),
      ),
      body: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: 
            Column(
              children: [
                ListTile(
                  title: Text('제목: ${entries[index]}'),
                  subtitle: Text('링크: ${links[index]}'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('링크 방문'),
                      onPressed: () {
                      },
                    ),
                    const SizedBox(width: 8),
                  ],
                )
              ]
            )
          );
        },
      ),
    );
  }
}
