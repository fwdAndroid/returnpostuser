import 'package:flutter/material.dart';
import 'package:returnpostcustomer/authentication/passwords/makeselection.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

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
              child: Image.asset('assets/back.png')),
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
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 259,
                  height: 42,
                  margin: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    'Provide the email address for swich you want to reset your password!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 25),
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
                        hintText: 'Email',
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
                       margin: EdgeInsets.only(top: 20,right: 20),
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
                        style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                     ),
              ],
            ),
        
      
    );
  }
}