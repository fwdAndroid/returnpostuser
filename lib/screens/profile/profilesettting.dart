import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({ Key? key }) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404040),
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('Profile settings',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/shape.png'),
              ),
              title: Text('Edit photo',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  )),
            ),
          ), //CircleAvata,)
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Name',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Oliver Dewize',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 13,
                )),
          ),
          Divider(
            height: 30,
            thickness: 0.5,
            indent: 27,
            endIndent: 27,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Phone number',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('+380 93 747 23 18',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ),
          GestureDetector(
            onTap: () {
              mydialog(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 30),
              child: Text('Edit',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                  )),
            ),
          ),
          Divider(
            height: 30,
            thickness: 0.5,
            indent: 27,
            endIndent: 27,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Email',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('example@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 13,
                )),
          ),
          
          
        ],
      ),
    );
  }

  ///Function Alert Dialig

  void mydialog(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => Container(
          child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),

                backgroundColor: Color(0xffEB5757),
                title: Center(
                    child: Container(
                        width: 188,
                        height: 58,
                        child: const Text(
                          'New\n Phone number',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ))),
                content: Container(
                  height: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        margin: EdgeInsets.only(top: 3, right: 20, left: 20),

                        //  padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          ),
                          // border: Border.all(color: Colors.grey,width: 0.5)
                        ),
                        child: TextFormField(
                          //  textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'Enter new number',
                            contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            // suffixIcon: Icon(Icons.remove_red_eye),

                            hintStyle: TextStyle(
                              color: Colors.red, // <-- Change this
                              fontSize: 12,

                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                            ),
                            // focusedBorder:OutlineInputBorder(
                            //   // borderSide: const BorderSide(color: Colors.white, width: 2.0),
                            //   borderRadius: BorderRadius.circular(25.0),
                            // hintTextDirection: HitTestDispatcher.,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            
                            'Enter a new phone number which an\n SMS with a code will be sent',
                            style: GoogleFonts.getFont('Montserrat',color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                           
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            fixedSize: Size(202, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23)),
                          ),
                          onPressed: () {
                           seconddialog(context);
                          },
                         child: Text(
                              'Sent',
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            ),
                          ),
                        
                      ),
                    ],
                  ),
                ),

                // actions: <Widget>[
                //   TextButton(
                //     onPressed: () => Navigator.pop(context, 'Cancel'),
                //     child: const Text('Cancel'),
                //   ),
                //   TextButton(
                //     onPressed: () => Navigator.pop(context, 'OK'),
                //     child: const Text('OK'),
                //  ),
              ),
        ));
  }

  void seconddialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: Color(0xffEB5757),
        title: Center(
            child: Container(
                width: 188,
                height: 58,
                child: const Text(
                  'New\n Phone number',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ))),
        content: Container(
            height: 250,
            child: Column(children: [
              Container(
                height: 55,
                margin: EdgeInsets.only(top: 3, right: 20, left: 20),

                //  padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                    bottomLeft: const Radius.circular(10.0),
                    bottomRight: const Radius.circular(10.0),
                  ),
                  // border: Border.all(color: Colors.grey,width: 0.5)
                ),
                child: TextFormField(
                  //  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Enter Code',
                    contentPadding: new EdgeInsets.fromLTRB(15, 15, 15, 15),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    // suffixIcon: Icon(Icons.remove_red_eye),

                    hintStyle: TextStyle(
                      color: Colors.red, // <-- Change this
                      fontSize: 12,

                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                    ),
                    // focusedBorder:OutlineInputBorder(
                    //   // borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    //   borderRadius: BorderRadius.circular(25.0),
                    // hintTextDirection: HitTestDispatcher.,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'Enter a new phone number which\n an SMS with a code will be sent',
                    style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                  )),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(202, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23)),
                  ),
                  onPressed: () {
                    thirddialog(context);
                  },
                  
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    
                  ),
                ),
              ),
            ])),
      ),
    );
  }

  void thirddialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          backgroundColor: Color(0xffEB5757),
          title: Center(
              child: Container(
                  width: 188,
                  height: 55,
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
          content: Container(
              height: 250,
              child: Column(children: [
               InkWell(
                 child: Image.asset('assets/check.png',height: 100,width: 100,),
               ),
                Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Enter a new phone number which\n an SMS with a code will be sent',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(202, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23)),
                    ),
                    onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
                    },
                    child: Text(
                        'Okay',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ),
                  
                ),
              ]))),
    );
  }}