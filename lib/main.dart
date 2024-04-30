import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopingapp/cart2.dart';
import 'package:shopingapp/home.dart';
import 'package:shopingapp/login.dart';
import 'package:shopingapp/shop.dart';
import 'package:shopingapp/signin.dart';
import 'package:shopingapp/wlcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopingapp/components/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: ((context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Wlcomepage(),
          )),
    );
  }
}
