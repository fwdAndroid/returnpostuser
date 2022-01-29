import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/orders/createanorder.dart';

class CreateOrders extends StatefulWidget {
  const CreateOrders({Key? key}) : super(key: key);

  @override
  _CreateOrdersState createState() => _CreateOrdersState();
}

class _CreateOrdersState extends State<CreateOrders> {
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
                'Book Return',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: 211,
              child: Text(
                'Chose Retailer',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              width: 211,
              child: Text(
                'Store ',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  itemBuilder: (index, context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/amazon.png',
                        width: 70,
                        height: 60,
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: 211,
              child: Text(
                'Select Carrier',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              width: 211,
              child: Text(
                'Post Office ',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  itemBuilder: (index, context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/amazon.png',
                        width: 70,
                        height: 60,
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: 300,
              child: Text(
                'Upload QR code & Images',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                       showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),

              backgroundColor: Color(0xffEB5757),
              title: Center(
                  child: Container(
                      width: 250,
                      height: 58,
                      child: const Text(
                        'Add \n  other retailer',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ))),
              content: Container(
                height: 220,
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
                          contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
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
                          'Enter the name of your retailer if it is \n not on the list of retailers',
                          style: TextStyle(color: Colors.white,fontSize: 12),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          fixedSize: Size(202, 58),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        onPressed: () {
                        // seconddialog(context);
                        },
                       child: Text(
                            'Enter',
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
            ));
                    },
                    child: Image.asset(
                      'assets/adds.png',
                      width: 100,
                      height: 100,
                    )),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
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
                    'Upload Image',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
          content: Container(
              height: MediaQuery.of(context).size.height /2.8,
              child: Column(children: [
                Image.asset('assets/check.png',height: 
139,width: 
139,),
               
                Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Great! Our upload has been \n comlected successfully.',
                      style: TextStyle(color: Colors.white),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(202, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23)),
                    ),
                    onPressed: () {
                 //  Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
                    },
                    child: Text(
                        'Next',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ),
                  
                ),
              ]))),
    );
                    },
                    child: Image.asset(
                      'assets/attach.png',
                      width: 100,
                      height: 100,
                    )),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    child: Image.asset(
                  'assets/code.png',
                  width: 100,
                  height: 100,
                )),
              ],
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffEB5757),
                  minimumSize: Size(202, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateAnOrder()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
