import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: darkBlue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('App Bar'),
            leading: Text('Lead'),
          ),
          body: Center(
            child: Text('This is the body of the App'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
              icon : Icon(Icons.home),
              label : 'Home',
              ),
              BottomNavigationBarItem(
              icon : Icon(Icons.settings),
              label : 'Settings',
              ),
            ],
          ),
          floatingActionButton : FloatingActionButton(
            child : Icon(Icons.add),
            onPressed: () {
              
            }
          ),
        ),
      );
  }
}