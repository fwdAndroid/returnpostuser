import 'package:flutter/material.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: 211,
            child: Text(
              'Add your Address ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset('assets/maps.png')),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            width: 211,
            child: Text(
              'Details ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 30),
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
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              height: 55,
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
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Home Job',
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
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              height: 97,
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
              )),
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
               margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
              height: 55,
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
                  Container(
                       margin: EdgeInsets.only(top: 20,right: 20,bottom: 10),
                       child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffEB5757),
                        minimumSize: Size(310, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23)),
                    ),
                    onPressed: () {
                        //  Navigator.push(context,
                        //    MaterialPageRoute(builder: (context) => Signinpage()));
                    },
                    child: Text(
                        'Add My Address',
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
