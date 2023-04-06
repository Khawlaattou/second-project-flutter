import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/components/sea.dart';
import 'package:fruits/components/add.dart';
import 'package:fruits/components/order.dart';
import 'package:fruits/components/cong.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/first": (context) => add(
              image: "",
              title: "",
              txt: "",
            ),
        "/sec": (context) => order(),
        "/third": (context) => cong(),
      },
      title: 'authentication',
      home: welcome(),
    );
  }
}

class welcome extends StatefulWidget {
  const welcome({super.key});
  @override
  welcomeState createState() => welcomeState();
}

class welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30,
                height: 140,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.menu_rounded,
                  ),
                ]),
              ),
              Container(
                alignment: Alignment.center,
                height: 140,
                width: 257,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Text(
                      'Hello khawla, What fruit salad combo do you want today?',
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                ]),
              ),
              Container(
                width: 90,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 225, 225),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: 'Search for fruit salade combos',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(190, 126, 126, 126),
                    fontSize: 12,
                  )),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          SizedBox(
              height: 45,
              width: 300,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Recommended Combo",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ])),
          SizedBox(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.10),
                          )
                        ]),
                    margin: EdgeInsets.all(0.01),
                    width: 140,
                    height: 170,
                    child: Column(children: [
                      SizedBox(
                        height: 22,
                      ),
                      Image.asset(
                        "images/product2.png",
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => add(
                                          image: "images/product2.png",
                                          title: "HONEY",
                                          txt: "",
                                        )));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(children: [
                                Text("HONEY\n".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("\$2,000".toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.amber.shade800
                                              .withOpacity(0.5))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Colors.amber.shade800,
                                  )
                                ]),
                              ]))),
                    ])),
                SizedBox(
                  width: 23,
                ),
                card(
                  image: "images/product3.png",
                  title: "Berry Mango Combo",
                  price: "8,000",
                  func: () {},
                ),
              ],
            ),
          )),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Hottest",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 19,
          ),
          SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cards(
                      image: "images/product1.png",
                      title: "Tropical Fruit Salad",
                      price: "1,000",
                      func: () {},
                      c: Color.fromARGB(144, 255, 247, 178),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    cards(
                      image: "images/product4.png",
                      title: "Mellon Fruit Salad",
                      price: "1,000",
                      func: () {},
                      c: Color.fromARGB(143, 247, 199, 199),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    cards(
                      image: "images/product5.png",
                      title: "Quinoa Fruit Salad",
                      price: "1,000",
                      func: () {},
                      c: Color.fromARGB(144, 193, 229, 243),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
