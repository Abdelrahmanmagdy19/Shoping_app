import 'package:flutter/material.dart';
import 'package:shopingapp/login.dart';
import 'package:shopingapp/signin.dart';
import 'main.dart';
import 'package:lottie/lottie.dart';

class Wlcomepage extends StatefulWidget {
  const Wlcomepage({Key? key}) : super(key: key);

  @override
  State<Wlcomepage> createState() => _WlcomepageState();
}

class _WlcomepageState extends State<Wlcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_BzPdVynB2O.json'),
            ),
          ),
          SizedBox(height: 50),
          MaterialButton(
            elevation: 5.0,
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Signinpage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
