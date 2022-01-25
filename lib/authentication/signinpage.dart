import 'package:flutter/material.dart';
import 'package:returnpostcustomer/authentication/passwords/forgotpassword.dart';
import 'package:returnpostcustomer/authentication/signuppage.dart';
import 'package:returnpostcustomer/screens/mainscreen.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({ Key? key }) : super(key: key);

  @override
  _SigninpageState createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
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
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    'Welcome\nBack',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 30),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: ' Phone Number',
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Color(0xff8D8989), // <-- Change this
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    )),
                Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

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
                          padding: EdgeInsets.only(top: 15, right: 20),
                          child: Icon(Icons.visibility_off,color: Color(0xff8D8989),)
                        ),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(top: 20, left: 20),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Color(0xff8D8989), // <-- Change this
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
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
                          'Forgot Password',
                          style: TextStyle(color: Color(0xff8D8989)),
                        )))
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEB5757),
                minimumSize: Size(310, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23)),
              ),
              onPressed: () {
                 Navigator.push(context,
                   MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
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
                        style: TextStyle(color: Color(0xffEB5757)),
                      )))),
        ],
      ),
    );
  }
}