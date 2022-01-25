import 'package:flutter/material.dart';

class OrderStatusDetails extends StatefulWidget {
  const OrderStatusDetails({ Key? key }) : super(key: key);

  @override
  _OrderStatusDetailsState createState() => _OrderStatusDetailsState();
}

class _OrderStatusDetailsState extends State<OrderStatusDetails> {
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
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Order #01265',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 30),
                child: Text('Delivered',
                    style: TextStyle(
                      color: Color(0xff5CD995),
                      fontSize: 13,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 10),
                child: Text('11 nov, 2021 18:00',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 13,
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Delivery address',
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
            child: Text('BooHoo',
                style: TextStyle(
                  color: Colors.white,
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
                    style: TextStyle(color: Colors.grey, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('12121323',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),
          ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Tracking Number ',
                    style: TextStyle(color: Colors.grey, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('1245677',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),

          ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Distance',
                    style: TextStyle(color: Colors.grey, fontSize: 15))),
            trailing: Container(
                margin: EdgeInsets.only(right: 20),
                child: Text('1.5 km',
                    style: TextStyle(color: Colors.white, fontSize: 15))),
          ),
            ListTile(
            leading: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Service Fee',
                    style: TextStyle(color: Colors.grey, fontSize: 15))),
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
           Divider(
            height: 30,
            thickness: 0.5,
            indent: 27,
            endIndent: 27,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Conditions and comments',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text(
                'All the things are already packed, as you\ndrive up, ill come out to meet you.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
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
            child: Text('Customer',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/shape.png'),
              ),
              title: Text('Stewart Menzies',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
              subtitle: Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 20,
                  )),
             
            ),
          ), //CircleAvata,)
          Divider(
            height: 30,
            thickness: 0.5,
            indent: 27,
            endIndent: 27,
            color: Colors.grey,
          ),
           Container(
             margin: EdgeInsets.only(left: 30),
             child: Text('Leave Your Feedback',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
           ),

           Container(
             margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
             child: Image.asset('assets/star.png',width: 100,))
        ],
      ),
    );
  }
}