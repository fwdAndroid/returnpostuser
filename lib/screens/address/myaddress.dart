import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
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
              margin: EdgeInsets.only(left: 20, top: 10,bottom: 10),
              width: 220,
              child: Text(
                'Add your Address ',
                style:GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600,fontSize: 24,color: Colors.white)
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Image.asset('assets/maps.png')),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: 65,
              child: Text(
                'Details ',
                style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white)
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 15),
              width: 211,
              child: Text(
                'Name ',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
            Container(
                    height: 60,
                    margin: EdgeInsets.only(left: 30,right: 30,top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Color(0xff535353),
                      borderRadius: new BorderRadius.circular(20),
                    ),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        
                        hintText: 'Home Job',
                        contentPadding: EdgeInsets.only(top: 10, left: 20),
                        border: InputBorder.none,
                     
                        
                        labelStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Colors.white,fontSize: 12,fontStyle: FontStyle.normal),
                        hintStyle:  GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600, color: Color(0xff8D8989),fontSize: 12,fontStyle: FontStyle.normal),
                      ),
                    )),
           
            Container(
              margin: EdgeInsets.only(left: 30, top: 10),
              width: 211,
              child: Text(
                'Address ',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
            Container(
                                     margin: EdgeInsets.only(left: 30,right: 30,top: 10),

                  height: 97,
                  width: 343,
                  //  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Color(0xff535353),
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  // border: Border.all(color: Colors.grey,width: 0.5)

                  child: TextFormField(
                                      style: TextStyle(color: Colors.white),

                    //  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20,top: 20),
                      hintText: '8 St. Martin’s Pl',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(
                        color: Color(0xff8D8989), // <-- Change this
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  )
            ),
                 Container(
              margin: EdgeInsets.only(left: 30, top: 10),
              width: 211,
              child: Text(
                'Floor number, apartments ',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
            Container(
                    margin: EdgeInsets.only(left: 30,right: 30,top: 10),
                  height: 55,
                 width: 340,
                  //  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Color(0xff535353),
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  // border: Border.all(color: Colors.grey,width: 0.5)

                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    //  textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Floor number, apartments',
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
            
                    // Center(
                    //   child: Container(
                    //     margin: EdgeInsets.all(20),
                    //     child: Center(
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 33, right:  33,top: 20,bottom: 20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffEB5757),
                                    fixedSize: Size(310, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24)),
                                ),
                                onPressed: () {
                                    //  Navigator.push(context,
                                    //    MaterialPageRoute(builder: (context) => Signinpage()));
                                },
                                child: Text(
                                    'Add My Address',
                                    style: GoogleFonts.getFont('Montserrat',fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),
                                ),
                            ),
                          ),
                        ),
                         
                  
                    //        ),
                    //   ),
                    // ),
          ],
        ),
      ),
    );
  }
}
