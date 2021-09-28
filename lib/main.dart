import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'package:injector/injector.dart';
import 'logic/implementations/Values.dart';
import 'logic/interfaces/IValues.dart';

void main() {
  final injector = Injector.appInstance;
  injector.registerSingleton<IValues>(() => Values());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
