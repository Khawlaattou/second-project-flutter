import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/components/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/first": (context) => welcome(),
      },
      title: 'authentication',
      home: auth(),
    );
  }
}

class auth extends StatefulWidget {
  const auth({super.key});
  @override
  authState createState() => authState();
}

class authState extends State<auth> {
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
                  "images/onboarding2.png",
                  height: 350,
                  width: 250,
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "What's your Name ?",
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              width: 300,
              height: 40,
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'name',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(190, 126, 126, 126))),
              ),
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
                      CupertinoPageRoute(builder: (context) => welcome()));
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
                  "Start ordering",
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
