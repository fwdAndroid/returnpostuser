import 'package:flutter/material.dart';
import 'package:returnpostcustomer/authentication/signinpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

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
                Container(
                  width: 237,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    height: 60,
                    width: 310,
                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(15),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        contentPadding:
                            EdgeInsets.only(top: 10, left: 30, right: 30),
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
                    width: 310,
                    margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(15),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
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
                     width: 310,
                    margin: EdgeInsets.only(left: 30, right: 30, top: 10),

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
                          child: Icon(Icons.visibility)
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
                    height: 60,
                    width: 310,
                    margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(15),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: 'Referral Code',
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
                                builder: (builder) => Signinpage()));
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Color(0xffEB5757)),
                      )))),
        ],
      ),
    );
  }
}