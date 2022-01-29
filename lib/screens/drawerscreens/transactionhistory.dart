import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/orders/ordersdetails.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
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
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset('assets/search.png',height: 40, width: 40,),
          )
        ],
      ),
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('Transaction history',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 30),
            child: Text('Today',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
             margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 110,
          
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
                          '£ 2.99',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 4),
                        child: Text(
                          'Credit card **** 0310',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 10),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 10, bottom: 10, right: 20),
                        child: Text(
                          '09:12',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xffEB5757),
                              fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('19 December 2991',
                style: TextStyle(
                    color: Color(0xff8D8989),
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: InkWell(
                onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (builder) => OrderStatusDetails()));
                },
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (index, context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                      margin:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Text(
                                        'from Zara',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 18),
                                      )),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 20, left: 20, right: 20),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20, top: 4),
                                    child: Text(
                                      'Credit card **** 0310',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        top: 10,
                                        bottom: 10,
                                        right: 20),
                                    child: Text(
                                      '09:12',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffEB5757),
                                          fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
