import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/components/sea.dart';
import 'package:fruits/components/welcome.dart';
import 'package:fruits/components/order.dart';
import 'package:fruits/components/cong.dart';

class add extends StatelessWidget {
  add({
    super.key,
    required this.image,
    required this.title,
    required this.txt,
  });
  final String image, title, txt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade800,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.amber.shade800,
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 35,
                    width: 60,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.white),
                        )),
                      ),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      label: Text(
                        "BACK",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                alignment: Alignment.center,
                height: 230,
                width: 257,
                decoration: BoxDecoration(
                  color: Colors.amber.shade800,
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Image.asset(
                    image,
                    height: 140,
                    width: 140,
                  )
                ]),
              ),
              Container(
                width: 20,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.amber.shade800,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(children: [
                SizedBox(
                  height: 21,
                ),
                SizedBox(
                    height: 40,
                    width: 300,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("$title",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ])),
                Row(children: [
                  SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.black45,
                      )),
                  Text(
                    " 1 ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.amber.shade800,
                    ),
                  ),
                  SizedBox(
                    width: 152,
                  ),
                  Text(
                    " \$2,000",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                Text(
                  "One Pack Contains:",
                  style: TextStyle(
                      color: Colors.transparent,
                      shadows: [
                        Shadow(offset: Offset(0, -10), color: Colors.black)
                      ],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.amber.shade800,
                      height: 5),
                ),
                Text(
                  "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.amber.shade800,
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    SizedBox(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => order()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber.shade800),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Colors.white),
                          )),
                        ),
                        child: Text(
                          "Add to basket",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ],
                )
              ]))
        ],
      ),
    );
  }
}
