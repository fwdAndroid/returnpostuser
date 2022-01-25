
import 'package:flutter/material.dart';

class OnboardingScreenTwo extends StatefulWidget {
  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff404040),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Color(0xff8D8989)),
                  ))
            ],
          ),
       Container(
              margin: EdgeInsets.only(top: 50,left: 20),
              child: Text(
                
                'Its Easy!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              textAlign: TextAlign.start),
            ),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset('assets/shoptwo.png'),),

         Container(
           width: 270,
           margin: EdgeInsets.symmetric(vertical: 30,),
           child: Text('You Book - We Collect - Your \n parcel is returned.', style: TextStyle(
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