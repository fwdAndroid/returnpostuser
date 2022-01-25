import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatefulWidget {
  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
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
             margin: EdgeInsets.only(top: 70,left: 20),
              child: Text(
                'We Return Parcels',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
                    textAlign: TextAlign.start
              ),
            
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: Image.asset('assets/shop.png'),),

         Container(
           width: 270,
           margin: EdgeInsets.symmetric(vertical: 50,),
           child: Text('We collect your parcel returns \n and process them at the carrier.', style: TextStyle(
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
