import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreenThree extends StatefulWidget {
  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
         backgroundColor: Color(0xff404040),
        
        body:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                    margin: EdgeInsets.only(left: 20,bottom: 40,top: 45),
                      child: Text(
                        "Be in control",
                        style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 28,fontStyle: FontStyle.normal),),
                    
                  ),
                   Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
            child: Image.asset('assets/shopthreee.png',width: 320,height: 210,fit: BoxFit.cover,),),
            Center(
              child: Container(
                 margin: EdgeInsets.only(top: 40),
           width: 300,
         //  margin: EdgeInsets.symmetric(vertical: 50,),
           child: Text(' Track your parcels in real time from \n  your door direct to carrier..', style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w400, color: Colors.white,fontSize: 16,fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center,),
         ),
            )   
            ],
          ),
        ),
      
    );
  }
}