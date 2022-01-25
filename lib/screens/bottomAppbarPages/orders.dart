import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/orders/myorderslist.dart';
import 'package:returnpostcustomer/screens/orders/ordersdetails.dart';

class Orders extends StatefulWidget {
  const Orders({ Key? key }) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
        actions: [
          InkWell(
            onTap: () {
             
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/search.png'),
            ),
          )
        ],
      ),
      extendBody: true,
      body: ListView(
        children: [
           Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
                
               Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 211,
                child: Text(
                    'My Order ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                ),
                 ), 
                 Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: 211,
                child: Text(
                  'Today ',
                  style: TextStyle(
                      color: Color(0xff8D8989),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),),
                 Container(
                    width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                   child: ListView.builder(
                itemCount: 12,
                itemBuilder: (index,context){
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(this.context, MaterialPageRoute(builder: (builder) => OrderStatusDetails()));
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          elevation: 5,
                          color: Color(0xff535353),
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 20, left: 20),
                                      child: Text(
                                        'from Zara',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 18),
                                      )),
                                  Spacer(),
                              
                                  Container(
                                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                                    child: Text(
                                      '£ 151.14',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Clothes',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ),
                               Container(
                                margin: EdgeInsets.only(left: 20, top: 4),
                                child: Text(
                                  '12 Blueberry Ln, London, EC5M 6JN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ),
                               Container(
                                margin: EdgeInsets.only(left: 20, top: 10,bottom: 10),
                                child: Text(
                                  'Post Office',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ),
                              Row(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20,bottom: 20),
                                  child: CircularProgressIndicator(
                                     valueColor:AlwaysStoppedAnimation<Color>(Colors.red),
                                  ),),
                                  Container(
                                     margin: EdgeInsets.only(left: 20,bottom: 20),
                                    child: Text('Courier on the way',style: TextStyle(color: Color(0xffEB5757)),)),
                                  Spacer(),
                                      Container(
                                         margin: EdgeInsets.only(right: 20,bottom: 20),
                                        child: Text('10 miin',style: TextStyle(color: Color(0xffEB5757)),))

                              ],)
                              
                              
                            ],
                          ),
                      
          ),
                    ));
                
                   }),
                 ) ],
        ),
        ],
      ),
    );
  }
}