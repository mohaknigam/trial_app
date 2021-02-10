import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 95, top: 100),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  decoration: BoxDecoration(color: Colors.redAccent),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Flexible(
          child: Row(
            children: [
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.home,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.account_box,
                  color: Colors.red,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
