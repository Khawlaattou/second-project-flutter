import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card(
      {required this.image,
      required this.title,
      required this.price,
      required this.func});
  final String image, title, price;
  final Function func;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.10),
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
            image,
            height: 80,
            width: 80,
          ),
          SizedBox(
            height: 8,
          ),
          GestureDetector(
              onTap: func(),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(children: [
                    Text("$title\n".toUpperCase(),
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
                      Text("\$$price".toUpperCase(),
                          style: TextStyle(
                              color: Colors.amber.shade800.withOpacity(0.5))),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.amber.shade800,
                      )
                    ]),
                  ]))),
        ]));
  }
}

class cards extends StatelessWidget {
  cards({
    required this.image,
    required this.title,
    required this.price,
    required this.func,
    required this.c,
  });
  final String image, title, price;
  final Function func;
  final Color c;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: c,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color.fromARGB(137, 0, 0, 0).withOpacity(0.01),
              )
            ]),
        margin: EdgeInsets.all(0.01),
        width: 130,
        height: 145,
        child: Column(children: [
          SizedBox(
            height: 5,
          ),
          Image.asset(
            image,
            height: 80,
            width: 80,
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
              onTap: func(),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(children: [
                    Text("$title\n".toUpperCase(),
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Row(children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "\$$price".toUpperCase(),
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.amber.shade800.withOpacity(0.5)),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.amber.shade800,
                      )
                    ]),
                  ]))),
        ]));
  }
}
