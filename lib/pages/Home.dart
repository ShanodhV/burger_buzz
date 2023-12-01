// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:burger_buzz/Widget/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool burger = false, pizza = false, ffries = false, icecream = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Shanodh,", style: AppWidget.BoldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("Delicious Burgers",
                style: AppWidget.HeadlineTextFieldStyle()),
            Text("Discover And Get Great Buegers",
                style: AppWidget.LightTextFieldStyle()),
            SizedBox(
              height: 20.0,
            ),
            showItem(),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/Chicken_burger.png",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Chicken Burger",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Regular Burger",
                            style: AppWidget.LightTextFieldStyle(),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "\Rs.550",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            burger = true;
            pizza = false;
            ffries = false;
            icecream = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: burger ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/burger.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: burger ? Colors.white : Colors.black,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            pizza = true;
            ffries = false;
            icecream = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: pizza ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/pizza.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: pizza ? Colors.white : Colors.black,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            pizza = false;
            ffries = true;
            icecream = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: ffries ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/ffries.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: ffries ? Colors.white : Colors.black,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            pizza = false;
            ffries = false;
            icecream = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                decoration: BoxDecoration(
                    color: icecream ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  "images/ice-cream.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                  color: icecream ? Colors.white : Colors.black,
                )),
          ),
        ),
      ],
    );
  }
}
