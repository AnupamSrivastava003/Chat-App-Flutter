import 'package:chat_app/components/drawer.dart';
import 'package:chat_app/components/listOfUsers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: ListOfUsers(),
        
      
    );
  }

}
