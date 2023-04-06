import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits/components/sea.dart';
import 'package:fruits/components/welcome.dart';
import 'package:fruits/components/order.dart';
import 'package:fruits/components/cong.dart';

class order extends StatelessWidget {
  order({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade800,
        body: Column(children: [
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
                        "",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 257,
                decoration: BoxDecoration(
                  color: Colors.amber.shade800,
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "My basket",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              Container(
                width: 40,
                height: 80,
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
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/product2.png"),
                    ),
                    Text(
                      "Honey lime combo ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 24,
                      height: 70,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      " \$2,000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 23,
                      height: 40,
                      child: Image.asset("images/product3.png"),
                    ),
                    Text(
                      "Berry Mango Combo",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 25,
                      height: 70,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      " \$2,000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/product4.png"),
                    ),
                    Text(
                      "Mellon Fruit Salad ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 26,
                      height: 70,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      " \$2,000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/product1.png"),
                    ),
                    Text(
                      "Tropical Fruit Salad",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 26,
                      height: 70,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      " \$2,000",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 150,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 13.5,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$8,000",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    SizedBox(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) => cong()));
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
                          "Checkout",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    )
                  ]),
                ],
              ))
        ]));
  }
}
