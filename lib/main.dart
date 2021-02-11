import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'HomePage',
          style:
              GoogleFonts.alegreyaSc(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 95, top: 100),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Hello How are you',
                          style: GoogleFonts.bangers(),
                        ),
                        Text('This is another text', style: GoogleFonts.abel()),
                      ],
                    ),
                    decoration: BoxDecoration(color: Colors.redAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('images/car1.jpg'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/logo.png'),
                radius: 100,
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: Lottie.asset('assets/47322-alert.json'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.home,
                  color: Colors.red,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.red,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: MaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.account_box,
                  color: Colors.red,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
