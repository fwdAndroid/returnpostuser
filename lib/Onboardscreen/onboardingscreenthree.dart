import 'package:flutter/material.dart';

class OnboardingScreenThree extends StatefulWidget {
  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff404040),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          
       Container(
              margin: EdgeInsets.only(top: 70,left: 20),
              child: Text(
                
                'Be in control',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              textAlign: TextAlign.start),
            ),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset('assets/shopthreee.png'),),

         Container(
           width: 270,
           margin: EdgeInsets.symmetric(vertical: 30,),
           child: Text('Track your parcels in real time \n from your door direct to carrier.', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                      textAlign: TextAlign.center,),
         )   
        ]),
      ),
    );
  }
}