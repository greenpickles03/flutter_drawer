import 'package:flutter/material.dart';
import 'package:flutter_drawer/widget/drawer.dart';

void main(){
  runApp(const HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'
        ),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('A Drawer is an invisible side screen',
          style: TextStyle(fontSize: 20.0),),
      ),
      drawer: const Drawer(
        child: DrawerCust(),
      ),
    );
  }
}

