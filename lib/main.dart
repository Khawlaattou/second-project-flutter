import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/components/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/first": (context) => auth(),
      },
      title: 'fruits',
      theme: ThemeData(fontFamily: 'brandon'),
      home: fruits(),
    );
  }
}

class fruits extends StatefulWidget {
  const fruits({super.key});
  @override
  fruitsState createState() => fruitsState();
}

class fruitsState extends State<fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 420,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 179, 95),
              ),
              child: Column(children: [
                const SizedBox(
                  height: 60,
                ),
                Image.asset(
                  "images/onboarding1.png",
                  height: 350,
                  width: 250,
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Get The Freshest Fruit Salade Combo",
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "   We deliver the best freshest fruit salas in town.Order for Combo today !!!",
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => auth()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.amber.shade800),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.white),
                  )),
                ),
                child: Text(
                  "let's get started",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
