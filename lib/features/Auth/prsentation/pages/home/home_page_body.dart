import 'package:delivery_food_v1/core/utils/size_config.dart';
import 'package:delivery_food_v1/core/widgets/constants.dart';
import 'package:delivery_food_v1/features/on%20Boarding/presentaion/widgets/custom_bouttn.dart';
import 'package:delivery_food_v1/features/on%20Boarding/presentaion/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class Home_Page_body extends StatelessWidget {
  Home_Page_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                height: 41,
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: KMainColor,
                      label: Text(
                        "Search Food...",
                      ),
                      prefixIcon: Icon(Icons.search_sharp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle_notifications_outlined,
                    size: 37,
                    color: KMainColor,
                  ))
            ],
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 32, top: 10, left: 32),
                    child: Stack(
                      children: [
                        Container(
                          width: 364,
                          height: 108,
                          foregroundDecoration: BoxDecoration(
                              color: Color.fromARGB(136, 42, 42, 42),
                              borderRadius: BorderRadius.circular(10)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/burger1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 7,
                          left: 12,
                          child: Text(
                            "Big OFFEER       50% \n   TODAY            OFF",
                            style: TextStyle(
                                color: Color.fromARGB(241, 255, 255, 255),
                                fontSize: 35,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 32,
                    ),
                    child: Row(
                      children: [
                        Custom_Bouttn_View(
                          top: 6,
                          left: 20,
                          onTap: () {},
                          color: Colors.black,
                          width: 60,
                          heigth: 33,
                          radios: 16.5,
                          text: "All",
                          textStyle: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Custom_Bouttn_View(
                            top: 6,
                            left: 22,
                            onTap: () {},
                            color: KMainColor,
                            width: 71,
                            heigth: 33,
                            radios: 16.5,
                            text: "Fruti",
                            textStyle:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Custom_Bouttn_View(
                            top: 6,
                            left: 22,
                            onTap: () {},
                            color: KMainColor,
                            width: 71,
                            heigth: 33,
                            radios: 16.5,
                            text: "Fruti",
                            textStyle:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Custom_Bouttn_View(
                            top: 6,
                            left: 22,
                            onTap: () {},
                            color: KMainColor,
                            width: 71,
                            heigth: 33,
                            radios: 16.5,
                            text: "Fruti",
                            textStyle:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Custom_Card(
                      image: "assets/images/burger2.jpg.jpg",
                      text: "price 100",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Custom_Card(
                      image: "assets/images/burger2.jpg.jpg",
                      text: "price 100",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Custom_Card(
                      image: "assets/images/burger2.jpg.jpg",
                      text: "price 100",
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 650,
              left: 25,
              right: 25,
              child: Container(
                width: 364,
                height: 52,
                decoration: BoxDecoration(
                    color: KMainColor,
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_filled,
                            size: 35,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            size: 35,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_shopping_cart_outlined,
                            size: 35,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
