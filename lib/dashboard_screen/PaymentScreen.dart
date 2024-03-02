import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/assets.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.sp,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Credit Card",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage(Assets.assetsVector),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "9855    6874    2345    9876",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.sp),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Card Holder Name",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                SizedBox(
                                  width: 60.w,
                                ),
                                Text(
                                  "Expiry Date",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Gurpyar Singh",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Text(
                                  "02/30",
                                  style: TextStyle(
                                      fontSize: 20.sp, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Visa",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  height: 180.h,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                          ),
                          Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Colors.redAccent,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Wallet",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp),
                          ),
                          SizedBox(
                            width: 120.w,
                          ),
                          Text(
                            "\$100.50",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(25.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Image(
                      image: AssetImage(Assets.assetsGroup),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Google Pay",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(25.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    Image(
                      image: AssetImage(Assets.iconsAmazon),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Amazon",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(color: Colors.white54, fontSize: 20.sp),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$",
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 30.sp),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "4.20",
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: Text(
                    "Pay From Credit Card",
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                ),
                height: 60,
                width: 210.w,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
