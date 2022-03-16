import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled6/routes.dart';

import 'home_page.dart';
import 'sherared_preferences.dart';


void main  () async {
  runApp( MyApp());
  await SharedPreferenceHelper.init();
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   static final navigatorKey = new GlobalKey<NavigatorState>();
   static startFirstScreen(String? message) {
     SharedPreferenceHelper().clearAll();
     Get.offAllNamed(Routes.loginScreen);
   }
   // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
