import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQ extends StatefulWidget {
  const FAQ({ Key? key }) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
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
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
              margin: EdgeInsets.only(top: 10, left: 30),
              child: Text('FAQ’s',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'Do you accept replacements?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ),
           Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'Will I be charhed for an exchange?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ),
           Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'How to connect wallet?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ),  Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'Do you accept replacements?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ),
                           Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'Do you accept replacements?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ),
           Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'Will I be charhed for an exchange?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ),
           Container(
                           margin: EdgeInsets.only(top:20,left: 23,right:23),
                               padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 380,
                            //  padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Color(0xff535353),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            // border: Border.all(color: Colors.grey,width: 0.5)

                            child: ListTile(
                              onTap: (){
                             //   Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
                              },
                              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                              shape: CircleBorder(),
                              leading: Text(
                                'How to connect wallet?',
                                style :GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff8D8989),
                              ),
                            ),
                          ), 
      ],),
    ),
    );
  }
}