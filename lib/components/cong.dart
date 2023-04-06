import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruits/components/welcome.dart';

class cong extends StatelessWidget {
  cong({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(height: 160),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset("images/correct.png"),
          ),
          SizedBox(height: 50),
          Text(
            "Congratulations!!!",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Your order have been taken and is being attended to",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 120,
          ),
          SizedBox(
            height: 45,
            width: 200,
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
                "Checkout",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          )
        ]));
  }
}
