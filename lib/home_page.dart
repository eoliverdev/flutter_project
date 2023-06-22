import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),

      ),

      body: Center(
        child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value){
            AppController.instance.changeTheme();
          },),
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

