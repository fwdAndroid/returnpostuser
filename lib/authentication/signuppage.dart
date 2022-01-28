import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:returnpostcustomer/authentication/signinpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404040),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    width: 237,
                  
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Text(
                      'Create an account',
                      style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 36,fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
                 Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 33),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                        hintText: 'Name',
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
                 Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 25),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                        hintText: ' Phone number',
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
              Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 25),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      
                      obscureText: true,
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Icon(Icons.visibility_off,                      color: Color(0xff8D8989),),
                        ),  
                        hintText: ' Password',
                        contentPadding: EdgeInsets.only(top: 20, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
                  Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 25),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      
                     
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                         
                        hintText: 'Referal Code',
                        contentPadding: EdgeInsets.only(top: 15, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEB5757),
                fixedSize: Size(310, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)),
              ),
              onPressed: () {
                //  Navigator.push(context,
                //    MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
              child: Text(
                'Verify My Phone',
                style:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 15,fontStyle: FontStyle.normal),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Signinpage()));
                      },
                      child: Text(
                        'Sign In',
                       style:   GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color:  Color(0xffEB5757),fontSize: 12,fontStyle: FontStyle.normal),
                     
                      )))),
        ],
      ),
    );
  }
}
