import 'package:coffe_shop/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: Color(0xff262B33).withOpacity(0.4),
              borderRadius: BorderRadius.circular(7.r),
            ),
            child: Image(
              image: AssetImage(Assets.iconsElements),
            ),
          ),
          SizedBox(
            width: 90.w,
          ),
          Text(
            "Favorites",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            width: 70.w,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.6,
              child: Stack(

                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width,
                    child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/icons/image 6.png',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 320, top: 15),
                          child: Positioned(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.heart_broken_outlined,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Positioned(
                        bottom: 0.w,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.r),
                                    topLeft: Radius.circular(30.r)),
                                color: Color(0xff000000).withOpacity(0.4),
                              ),
                              width: MediaQuery.sizeOf(context).width,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cappuccino',
                                          style: TextStyle(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "With Steamed milk",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.star_border_outlined,
                                          color: Colors.deepOrangeAccent,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.sp),
                                            ),
                                            Text(
                                              "6,078",
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 15.sp),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(7),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(6.r),
                                                ),
                                                color: Color(0xff141921),
                                              ),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.sports_football,
                                                    color: Colors.orange,
                                                  ),
                                                  Text(
                                                    "Coffee",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(7),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(6.r),
                                                ),
                                                color: Color(0xff141921),
                                              ),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.water_drop,
                                                    color: Colors.orange,
                                                  ),
                                                  Text(
                                                    "Milk",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 12),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 50.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.r),
                                            ),
                                            color: Color(0xff141921),
                                          ),
                                          child: Text(
                                            "Medium Roasted",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Text(
                "Milk is the liquid produced by the mammary glands of mammals, including humans. Breast milk is the preferred food for infants, as it is well-tolerated while their digestive tracts develop and mature.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
