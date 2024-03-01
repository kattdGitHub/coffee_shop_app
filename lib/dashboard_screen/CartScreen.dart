// import 'package:coffe_shop/generated/assets.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: SingleChildScrollView(
//           child: Expanded(
//             flex: 2,
//             child: Row(
//               children: [
//                 Container(
//                   width: 100.w,
//                   height: 100.h,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(Assets.iconsImage6),
//                     ),
//                   ),
//                 ),
//                 Center(
//                   child: Container(
//                     decoration: BoxDecoration(color: Colors.grey),
//                     height: 250,
//                     width: 330,
//                     child: Column(
//                       children: [
//                         Text(
//                           "Cappuccino",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 25.sp,
//                           ),
//                         ),
//                         Text(
//                           "With steamed milk",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 13.sp,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: 10),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Color(0xff000000).withOpacity(0.4),
//                           ),
//                           width: 118.w,
//                           height: 40.h,
//                           child: Center(
//                             child: Text(
//                               "Medium Raosted",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/assets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children:[
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(Assets.iconsImage6),
                ),
              ),
              height: 330.w,
              width: 250.w,
            ),
          ],
        ),
      ),
      /* child: Container(
        height: 100.w,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.iconsImage6),
          ),
        ),
      )*/
    );
  }
}
