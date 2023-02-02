

import 'package:flutter/material.dart';
import 'package:flutter_drawer/screen/homepage.dart';
import 'package:flutter_drawer/screen/loginpage.dart';
import 'package:flutter_drawer/screen/summarypage.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Routes",
    initialRoute: '/',
    routes: {
      '/': (context) => const LoginPage(),
      '/home': (context) => const HomePages(),
      '/summaryReport': (context) => const SummaryReportHomePage(),
    },
  ));
}