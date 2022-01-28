import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:returnpostcustomer/screens/payments/finalpayment.dart';

class CreateAnOrder extends StatefulWidget {
  const CreateAnOrder({Key? key}) : super(key: key);

  @override
  _CreateAnOrderState createState() => _CreateAnOrderState();
}

class _CreateAnOrderState extends State<CreateAnOrder> {
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
              margin: EdgeInsets.only(left: 20, top: 10),
              width: 211,
              child: Text(
                'Create order',
                style: GoogleFonts.getFont('Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24)
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 40),
              width: 211,
              child: Text(
                'Details',
                style: GoogleFonts.getFont('Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 10, color: Color(0xff8D8989)),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                height: 60,
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
                    hintText: 'Name',
                    contentPadding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Color(0xff8D8989), // <-- Change this
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 10, color: Color(0xff8D8989)),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                height: 60,
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff8D8989),
                      ),
                    ),
                    hintText: 'Choose categories',
                    contentPadding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Color(0xff8D8989), // <-- Change this
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Text(
                'Date',
                style: TextStyle(fontSize: 10, color: Color(0xff8D8989)),
              ),
            ),
            Center(
              child: Container(
                               margin: EdgeInsets.only(left: 10, right: 10, top: 10),

                height: 60,
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 20),
                      child: Icon(
                        Icons.date_range,
                        color: Color(0xff8D8989),
                      ),
                    ),
                    hintText: '12/21/2143',
                    contentPadding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Color(0xff8D8989), // <-- Change this
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Text(
                'Addresss',
                style: TextStyle(fontSize: 10, color: Color(0xff8D8989)),
              ),
            ),
            Center(
              child: Container(
                             margin: EdgeInsets.only(left: 10, right: 10, top: 10),

                height: 70,
                width: 340,
                //  padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Color(0xff535353),
                  borderRadius: new BorderRadius.circular(15),
                ),
                // border: Border.all(color: Colors.grey,width: 0.5)

                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(color: Colors.white),
                  
                  //  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 20),
                      child: Image.asset('assets/pin.png',height: 18,width: 18,)
                    ),
                    hintText: '8 St. Martins Pl \n  London, WC2n 4JH, United Kingdom ',
                    contentPadding: EdgeInsets.only( left: 30, right: 20,top: 20),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      
                      color: Color(0xff8D8989), // <-- Change this
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
             Container(
               margin: EdgeInsets.only(top: 30,bottom: 20),
               child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEB5757),
                    fixedSize: Size(
202, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23)),
                  ),
                  onPressed: () {
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context) => FinalPayment()));
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
      ),
    );
  }
}
