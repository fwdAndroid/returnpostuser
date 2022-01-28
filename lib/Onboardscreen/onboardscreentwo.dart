
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreenTwo extends StatefulWidget {
  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
         backgroundColor: Color(0xff404040),
         appBar: AppBar(
           elevation: 0,
           backgroundColor: Colors.transparent,
           actions: [
                          TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: 
                     GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w400, color: Color(0xff8D8989),fontSize: 16,fontStyle: FontStyle.normal)
                   
                  ))
           ],
         ),
         extendBody: true,
        body:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                    margin: EdgeInsets.only(left: 20,bottom: 40),
                      child: Text(
                        "It's Easy!",
                        style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 28,fontStyle: FontStyle.normal),),
                    
                  ),
                   Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
            child: Image.asset('assets/shoptwo.png',width: 320,height: 210,fit: BoxFit.cover,),),
            Center(
              child: Container(
                 margin: EdgeInsets.only(top: 40),
           width: 270,
         //  margin: EdgeInsets.symmetric(vertical: 50,),
           child: Text(' We collect your parcel returns \n and process them at the carrier.', style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w400, color: Colors.white,fontSize: 16,fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center,),
         ),
            )   
            ],
          ),
        ),
      
    );
  }
}