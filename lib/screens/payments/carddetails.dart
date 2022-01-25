import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/payments/addnewcard.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({ Key? key }) : super(key: key);

  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  // Navigator.pop(context);
                },
                child: Image.asset('assets/good.png')),
          ),
        ],
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
              'Another Payments',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),

        Container(
          width: 310,
          height: 55,
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
           decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
          child:ListTile(
            leading: Image.asset('assets/master.png',height: 20,width: 20,),
            title: Text('**** 0303',style: TextStyle(color: Colors.white,fontSize: 12),),
            trailing: Image.asset('assets/delete.png',height: 20,width: 20,),
          )
        ),
Container(
          width: 310,
          height: 55,
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
           decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
          child:ListTile(
            leading: Image.asset('assets/apple.png',height: 20,width: 20,),
            title: Text('Apple Pay',style: TextStyle(color: Colors.white,fontSize: 12),),
            trailing: Image.asset('assets/delete.png',height: 20,width: 20,),
          )
        ),

        Container(
          width: 310,
          height: 55,
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
           decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
          child:ListTile(
            leading: Image.asset('assets/pa.png',height: 20,width: 20,),
            title: Text('Fawad Kaleem',style: TextStyle(color: Colors.white,fontSize: 12),),
            trailing: Image.asset('assets/delete.png',height: 20,width: 20,),
          )
        ),
          Center(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEB5757),
                    fixedSize: Size(310, 56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23)),
                  ),
                  onPressed: () {
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context) => AddnewCard()));
                  },
                  child: Text(
                    'Coutinue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
          ),

           

        ],),
    );
  }
}