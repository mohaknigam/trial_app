import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Model/Car.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    containerForModalPopup<T>(BuildContext context, Widget child) {
      showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) => child).then<void>((method) {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: null,
            duration: Duration(milliseconds: 800),
          ),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Widgets'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        splashColor: Colors.black54,
        child: Icon(Icons.send),
        onPressed: () => containerForModalPopup(
          context,
          CupertinoActionSheet(
            title: Text(
              'Hey User',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            message: Text('Does your work inspires you?'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'No',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
