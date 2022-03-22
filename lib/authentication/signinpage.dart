import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:returnpostcustomer/authentication/passwords/forgotpassword.dart';
import 'package:returnpostcustomer/authentication/signuppage.dart';
import 'package:returnpostcustomer/database/auth_method.dart';
import 'package:returnpostcustomer/screens/mainscreen.dart';


class Signinpage extends StatefulWidget {
  const Signinpage({Key? key}) : super(key: key);

  @override
  _SigninpageState createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  TextEditingController controllerP = TextEditingController();
    TextEditingController controllerPass = TextEditingController();
bool _isLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllerP.clear();
    controllerPass.clear();
  }
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
                Container(
                  width: 237,
                  height: 88,
                  margin: EdgeInsets.only(left: 30,right: 30,top: 28),
                  child: Text(
                    'Welcome\nback',
                    style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 36,fontStyle: FontStyle.normal),
                ),),
                Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 30),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      controller: controllerP,
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                        hintText: ' Email',
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
                Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 28),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      controller: controllerPass,
                      obscureText: true,
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(top: 13, right: 20),
                          child: Icon(Icons.visibility_off,color: Color(0xff8D8989),)
                        ),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(top: 20, left: 20),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                        // hintStyle: TextStyle(
                          
                        //   color: Color(0xff8D8989), // <-- Change this
                        //   fontSize: 12,
                        //   fontWeight: FontWeight.w600,
                        //   fontStyle: FontStyle.normal,
                        // ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 30),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (xxx) => ForgotPassword()));
                        },
                        child: Text(
                          'Forgot your password?',
                          style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal)),
                        ))
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEB5757),
                minimumSize: Size(310, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
              ),
              onPressed:loginUser,
              child:_isLoading ? Center(
                child: CircularProgressIndicator(),
              ) :  Text(
                
                'Sign In',
                style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 15,fontStyle: FontStyle.normal),

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
                                builder: (builder) => SignUpPage()));
                      },
                      child: Text(
                        'Sign Up',
                     style:    GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xffEB5757),fontSize: 15,fontStyle: FontStyle.normal),
                       
                      )))),
        ],
      ),
      
    );
  }
  void loginUser() async{
    setState(() {
      _isLoading = true;
    });
    String rse = await AuthMethods().loginUpUser(
        email: controllerP.text,
        pass: controllerPass.text,
      );

    print(rse);
    setState(() {
      _isLoading = false;
    });
    if(rse == 'sucess'){
      print('success');
     Navigator.push(context, MaterialPageRoute(builder: (builder) => Signinpage()));
    }
    else{
      showSnakBar(rse, context);
    }
     
  }
  
/// SnakBar Code
showSnakBar(String contexts,BuildContext context){
 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(contexts)));
  
}

}
