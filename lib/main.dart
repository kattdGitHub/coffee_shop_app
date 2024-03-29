import 'package:coffe_shop/dashboard_screen/CartScreen.dart';
import 'package:coffe_shop/dashboard_screen/CoffeeDetailsScreen.dart';
import 'package:coffe_shop/dashboard_screen/PaymentScreen.dart';
import 'package:coffe_shop/dashboard_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dashboard_screen/DashBoard.dart';
import 'dashboard_screen/FavoritesScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Coffe Shop',
          themeMode: ThemeMode.dark,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
