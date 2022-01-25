import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/mainscreen.dart';

class Checkout extends StatefulWidget {
  const Checkout({ Key? key }) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Check Out',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
         
              Container(
                margin: EdgeInsets.only(top: 10, left: 30,right: 30,bottom:10),
                child: Image.asset('assets/maps.png')
              ),
           
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Delivery to',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('8 St. Martin’s Pl',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, left: 30),
            child: Text('London, WC2n 4JH, United Kingdom',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
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
            child: Text('Store you’re returning to',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Zarra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 30),
            child: Text('Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
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
            child: Text('Categories',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Clothes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
            Container(
            margin: EdgeInsets.only(top: 5, left: 30),
            child: Text('Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
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
            child: Text('Carrier',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Post Office',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
            Container(
            margin: EdgeInsets.only(top: 5, left: 30),
            child: Text('Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                )),
          ),
          Divider(
            height: 30,
            thickness: 0.5,
            indent: 27,
            endIndent: 27,
            color: Colors.grey,
          ),
          ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Discount Code',
                    style: TextStyle(color: Colors.white54, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('12121323',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),
          ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Tracking Number ',
                    style: TextStyle(color: Colors.white54, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('1245677',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),

          ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Distance',
                    style: TextStyle(color: Colors.white54, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('1.5 km',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),
            ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Service Fee',
                    style: TextStyle(color: Colors.white54, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('£ 2.99',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
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
            child: Text('Payment Method',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: ListTile(leading: Image.asset('assets/master.png',height: 20,),
            title: Text('**** **** **** 3095',style: TextStyle(color: Color(0xff8D8989)),),)
          ),
          
          Container(
            margin: EdgeInsets.only(top: 10,left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Total Price',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
                    Text('£ 2.99',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ],),
          ),
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
                         MaterialPageRoute(builder: (context) => MainScreen()));
                    },
                    child: Text(
                      'Order',
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