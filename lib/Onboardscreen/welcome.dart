import 'package:flutter/material.dart';
import 'package:returnpostcustomer/Onboardscreen/onboardscreens.dart';

class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Expanded(child: OnBoardingScreens()),
      ],
    );
  }
}