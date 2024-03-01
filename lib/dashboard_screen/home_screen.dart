import 'package:coffe_shop/dashboard_screen/CoffeeDetailsScreen.dart';
import 'package:coffe_shop/generated/assets.dart';
import 'package:coffe_shop/utils/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'BeanDetailsScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabList = [
    "All",
    "Cappuccino",
    "Espresso",
    "Americano",
    "Macchiato"
  ];
  List<String> imageList = [
    "assets/icons/Group 10.png",
    "assets/icons/Group 10(2).png",
    "assets/icons/Group 10(2).png",
    "assets/icons/Group 10(2).png",
  ];
  List<String> coffebeans = [
    "assets/icons/Mask group.png",
    "assets/icons/Mask group(1).png",
    "assets/icons/Mask group(1).png",
    "assets/icons/Mask group(1).png",
    "assets/icons/Mask group(1).png",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  hSize(23),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xff21262E),
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(Assets.iconsElements)),
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            Assets.iconsIntersect,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  hSize(20),
                  Text(
                    "Find the best ",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "coffee for you",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            "assets/icons/search-normal.svg",
                          ),
                        ),
                        hintText: "Find your coffe....",
                        hintStyle: TextStyle(
                          color: Color(0xff52555A),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < tabList.length; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 30),
                            child: Text(
                              tabList[i],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < imageList.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/icons/Group 10.png",
                                    ),
                                  ),
                                  Text(
                                    "Cappuccino",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  hSize(7),
                                  Text(
                                    "With Steamed Milk",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                  hSize(7),
                                  SizedBox(
                                    height: 40,
                                    width: 120,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "\$4.20",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            pushTo(
                                                context, CoffeeDetailsScreen());
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Color(0xffD17842)),
                                            padding: EdgeInsets.all(6),
                                            child: Icon(
                                              CupertinoIcons.add,
                                              color: Colors.white,
                                              size: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  Text(
                    "coffe beans",
                    style: TextStyle(color: Colors.white),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int j = 0; j < coffebeans.length; j++)
                              cardWidget(
                                i: j,
                                image: coffebeans[j],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  cardWidget({
    required int i,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(
                image,
              ),
            ),
            Text(
              "Cappuccino",
              style: TextStyle(color: Colors.white),
            ),
            hSize(7),
            Text(
              "With Steamed Milk",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            hSize(7),
            SizedBox(
              height: 40,
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "\$4.20",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  InkWell(
                    onTap: () {
                      pushTo(context, BeanDetailsScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xffD17842)),
                      padding: EdgeInsets.all(6),
                      child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
