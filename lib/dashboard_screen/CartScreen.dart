import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/assets.dart';

class ItemModel {
  final String title;

  final num price;

  ItemModel({required this.title, required this.price});
}

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List<ItemModel> assetsBean = [
    ItemModel(title: "250gm", price: 4.20),
    ItemModel(title: "500gm", price: 4.20),
    ItemModel(title: "1kg", price: 4.20),
  ];
 List<ItemModel> iconsGroup10 = [
    ItemModel(title: "S", price: 4.20),
    ItemModel(title: "M", price: 4.20),
    ItemModel(title: "L", price: 4.20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Container(
                    height: 30.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xff262B33).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Image(
                      image: AssetImage(Assets.iconsElements),
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(Assets.iconsIntersect),
                    ),
                    height: 30.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              customCoffeeCard(
                list: iconsGroup10,
                image: Assets.iconsGroup10,
                name: 'Cappuccino',
                sname: '"With steamed milk"',
              ),
              SizedBox(
                height: 10.h,
              ),
              coffeCard(
                  image: Assets.iconsImage5,
                  name: "Cappuccino",
                  sname: '"with steamed Milk"'),
              SizedBox(
                height: 10,
              ),
              coffeCard(
                  image: Assets.iconsMaskgroup,
                  name: 'Robusta Beans',
                  sname: 'From Africa'),
              SizedBox(
                height: 9.h,
              ),
              customCoffeeCard(
                list: assetsBean,
                  image: Assets.assetsBean,
                  name: 'Liberica Coffee Beans',
                  sname: '"With steamed milk"'),
            ],
          ),
        ),
      ),
    );
  }

  Widget coffeCard(
      {required String image, required String name, required String sname}) {
    return Container(
      width: 330.w,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(image),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      sname,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 72.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Center(
                            child: Text(
                              "M",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$",
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "6.20",
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black54,
                          ),
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 23.sp),
                            ),
                          ),
                          height: 30.h,
                          width: 50.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customCoffeeCard({
    required String image,
    required String name,
    required String sname,
    required List<ItemModel> list,
  }) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      // width: 330,
      // height: 250,`
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100.h,
                width: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    sname,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15.h,
                    width: 10.w,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Medium Roasted",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    height: 40.h,
                    width: 118.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff000000).withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
          for (var item in list)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      item.title,
                      style: TextStyle(color: Colors.white, fontSize: 25.sp),
                    ),
                    height: 35.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff000000).withOpacity(0.4),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "\$",
                    style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                  ),
                  Text(
                    "${item.price}",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                    height: 28.h,
                    width: 28.h,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 50.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                    height: 28.h,
                    width: 28.h,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
