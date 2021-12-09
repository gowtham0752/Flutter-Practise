import 'package:flutter/material.dart';
import 'package:practice/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.red,
          title: Text('Login Page')
      ),
      body: Container(
        color: AppColors.orange,
        child: Center(
        child: Container(
          height: 230,
          width: 450,
          margin: const EdgeInsets.all(20),
            child: Card(
              color: AppColors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                  child: TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                       // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                        // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),

                 ),

                  Padding(padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                         enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                         // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                          // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 20,left: 8, right: 8),
                    child: TextButton(
                      child: Text('LOGIN', style: TextStyle(fontSize: 15.0),),
                      style: flatButtonStyle,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    //minimumSize: Size(66, 33),
    padding: EdgeInsets.symmetric(horizontal: 56.0, vertical: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    backgroundColor: Colors.blue,
  );
}
