import 'package:flutter/material.dart';

void main() {
  runApp( AppWidget(title: 'Flutter'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),

        ),

        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black,
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              )
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            setState(() {
              counter++;
            });
          },
        ),
      );
  }
}

