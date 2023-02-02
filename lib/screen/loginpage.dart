import 'package:flutter/material.dart';

void main(){
  runApp( const LoginApp());
}

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/home');
          },
          child: const Text(
            "Login", style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
           ),
          ),
        ),
      ),
    );
  }
}

