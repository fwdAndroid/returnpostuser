import 'package:flutter/material.dart';
import 'package:returnpostcustomer/authentication/signinpage.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({ Key? key }) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                    margin: EdgeInsets.only(left: 30, right: 30, top: 25),
                    height: 60,
                    width: 310,
                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(25),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top:15.0,right: 10),
                          child: Icon(Icons.visibility_off,color: Color(0xff8D8989)),
                        ),
                        hintText: 'New Password',
                        contentPadding:
                            EdgeInsets.only(top: 20, left: 30, right: 30),
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
                    margin: EdgeInsets.only(left: 30, right: 30, top: 25),
                    height: 60,
                    width: 310,
                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(25),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top:15.0,right: 10),
                          child: Icon(Icons.visibility_off,color: Color(0xff8D8989)),
                        ),
                        hintText: 'Confrim Password',
                        contentPadding:
                            EdgeInsets.only(top: 20, left: 30, right: 30),
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
                           MaterialPageRoute(builder: (context) => Signinpage()));
                    },
                    child: Text(
                        'Update',
                        style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                     ),
              ],
            ),);
  }
}