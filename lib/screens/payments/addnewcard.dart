import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/payments/carddetails.dart';

class AddnewCard extends StatefulWidget {
  const AddnewCard({ Key? key }) : super(key: key);

  @override
  _AddnewCardState createState() => _AddnewCardState();
}

class _AddnewCardState extends State<AddnewCard> {
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
        children: [
          Container(
            width: 237,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              'Add new card',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 25),
            child: Text(
              'Card Number',
              style: TextStyle(
                color: Color(0xff8D8989), // <-- Change this
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 10),
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
                  suffixIcon: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/master.png',
                        height: 15,
                        width: 15,
                      )),
                  hintText: '33122 1121212 1212',
                  contentPadding: EdgeInsets.only(left: 30, right: 30, top: 14),
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
            child: Text(
              'Card holder’s name',
              style: TextStyle(
                color: Color(0xff8D8989), // <-- Change this
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 10),
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
                  hintText: 'Fawad Kaleem',
                  contentPadding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
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
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Expires on',
                          style: TextStyle(
                            color: Color(0xff8D8989), // <-- Change this
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 30, top: 10),
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
                              hintText: 'Fawad Kaleem',
                              contentPadding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
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
                Expanded(flex: 1,child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'CVV',
                          style: TextStyle(
                            color: Color(0xff8D8989), // <-- Change this
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                       Container(
                          margin: EdgeInsets.only(left: 30, top: 10,right: 30),
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
                              hintText: '. . .',
                              contentPadding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
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
                ],),
                )
              ],
            ),
          ),
         
              Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 25),
            child: Text(
              'Card information is stored on a secure server',
              style: TextStyle(
                color: Color(0xff8D8989), // <-- Change this
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),

           Center(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEB5757),
                    fixedSize: Size(202, 56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23)),
                  ),
                  onPressed: () {
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context) => CardDetails()));
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