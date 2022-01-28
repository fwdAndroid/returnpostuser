import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:returnpostcustomer/authentication/passwords/makeselection.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/back.png',height: 46,width: 46,)),
        ),
      ),
      extendBody: true,
      backgroundColor: Color(0xff404040),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
                Container(
                  width: 237,
                  height: 88,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    'New Credentials',
                    style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 36,fontStyle: FontStyle.normal),),
                ),
                Container(
                  // width: 265,
                  height: 42,
                  margin: EdgeInsets.only(
                    left: 30,
                    top: 15,
                    bottom: 10
                  ),
                  child: Text(
                    'Provide the email address for which \n you want to reset your password!',
                    style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w500, color: Colors.white,fontSize: 14,fontStyle: FontStyle.normal),
                  ),
                ),
              Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 22,right: 22,top: 33),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                        hintText: 'email',
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
                      Container(
                        margin: EdgeInsets.symmetric(vertical:20),
                        child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                            primary: Color(0xffEB5757),
                            minimumSize: Size(310, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23)),
                    ),
                    onPressed: () {
                             Navigator.push(context,
                               MaterialPageRoute(builder: (context) => MakeSelection()));
                    },
                    child: Text(
                            'Next',
                            style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 15,fontStyle: FontStyle.normal),
                    ),
                  ),
                
                         
                     ),
                      ),
              ],
            ),
        
      
    );
  }
}
