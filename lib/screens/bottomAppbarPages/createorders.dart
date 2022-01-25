import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/orders/createanorder.dart';

class CreateOrders extends StatefulWidget {
  const CreateOrders({ Key? key }) : super(key: key);

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
          child:
              InkWell(onTap: () {
               Navigator.pop(context);
              }, child: Image.asset('assets/back.png')),
        ),
       
      ),
      extendBody: true,
      body: SingleChildScrollView(child: Column(
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
                ),),
                 Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 211,
                child: Text(
                  'Chose Retailer',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),),
                 Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                width: 211,
                child: Text(
                  'Store ',
                  style: TextStyle(
                      color: Color(0xff8D8989),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 13,
                    itemBuilder: (index,context){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/amazon.png',width: 70,height: 60,),
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
                ),),
                  Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                width: 211,
                child: Text(
                  'Post Office ',
                  style: TextStyle(
                      color: Color(0xff8D8989),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 13,
                    itemBuilder: (index,context){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/amazon.png',width: 70,height: 60,),
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
                ),),

                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                   InkWell(
                     onTap: (){},
                     child: Image.asset('assets/adds.png',width: 100,height: 100,)),
                    SizedBox(width: 10,),
                    InkWell(child: Image.asset('assets/attach.png',width: 100,height: 100,)),
                    SizedBox(width: 10,),
                     InkWell(child: Image.asset('assets/code.png',width: 100,height: 100,)),
                ],),
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

      ],),),
    );
  }
}