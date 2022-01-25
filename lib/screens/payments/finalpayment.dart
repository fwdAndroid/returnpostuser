import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/payments/checkout.dart';

class FinalPayment extends StatefulWidget {
  const FinalPayment({Key? key}) : super(key: key);

  @override
  _FinalPaymentState createState() => _FinalPaymentState();
}

enum SingingCharacter { lafayette, jefferson, third }

class _FinalPaymentState extends State<FinalPayment> {
  SingingCharacter? _character = SingingCharacter.lafayette;
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 237,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Payment',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xffEB5757),
                  borderRadius: new BorderRadius.circular(15),
                ),
                child: RadioListTile<SingingCharacter>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  selectedTileColor: Color(0xffEB5757),
                  title: Text(
                    '**** 0303',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  secondary: Image.asset(
                    'assets/master.png',
                    height: 20,
                    width: 20,
                  ),
                  value: SingingCharacter.jefferson,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
             Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xff535353),
                  borderRadius: new BorderRadius.circular(15),
                ),
                child: RadioListTile<SingingCharacter>(
                  controlAffinity: ListTileControlAffinity.trailing,
               
                  title: Text(
                    'Apple Pay',
                    style: TextStyle(
                    color: Color(0xff8D8989),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  secondary: Image.asset(
                    'assets/apple.png',
                    height: 20,
                    width: 20,
                  ),
                  value: SingingCharacter.third,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),


              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                decoration: BoxDecoration(
                  color: Color(0xff535353),
                  borderRadius: new BorderRadius.circular(15),
                ),
                child: RadioListTile<SingingCharacter>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(
                    'Paypal',
                    style: TextStyle(
                        color: Color(0xff8D8989),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  secondary: Image.asset(
                    'assets/payments.png',
                    height: 30,
                    width: 20,
                  ),
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                decoration: BoxDecoration(
                  color: Color(0xff535353),
                  borderRadius: new BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/card.png',
                    height: 30,
                    width: 20,
                  ),
                  title: Text('Another payments',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight:FontWeight.w600),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff535353),),
                )
              ),

              Container(
                width: 237,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Discount Code',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                      //  padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Color(0xff535353),
                        borderRadius: new BorderRadius.circular(20),
                      ),
                      // border: Border.all(color: Colors.grey,width: 0.5)

                      child: TextFormField(
                        //  textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: '122455',
                         
                          contentPadding: EdgeInsets.only(top: 10, left: 20),
                          border: InputBorder.none,
                        
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white, // <-- Change this
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      )),
                       Container(
                width: 237,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Notes A Courier',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
            
                margin: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  'Total Price',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
               Container(
            
                margin: EdgeInsets.only(right: 15, top: 10),
                child: Text(
                  '£ 2.99',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              ],),

              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffEB5757),
                      fixedSize: Size(202, 56),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23)),
                    ),
                    onPressed: () {
                       Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Checkout()));
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
        ],
      ),
    );
  }
}