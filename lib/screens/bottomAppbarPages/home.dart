import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/address/myaddress.dart';
import 'package:returnpostcustomer/screens/orders/myorderslist.dart';
import 'package:returnpostcustomer/screens/widgets/mydrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404040),
      appBar: AppBar(
        title: Text(
          '8 St. Martin’s Pl',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => MyAddress()));
              }, child: Image.asset('assets/mapbutton.png')),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => MyDrawer()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/profilepic.png'),
            ),
          )
        ],
      ),
      extendBody: true,
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: 211,
                child: Text(
                  'Welcome, Stewart Menzies ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),),

                Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                width: 211,
                child: Text(
                  'New Order ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 13,
                    itemBuilder: (index,context){
                    return Stack(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width:150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(image: AssetImage('assets/clothes.png',),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                        Positioned(
                          bottom: 20,
                          left: 20, 
                          child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Clothes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                                ],
                              ),
                        )
                    ],);
                  }),
                ),
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (builder) => MyOrdersList()));
                   },
                   child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 211,
                child: Text(
                    'My Order ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                ),),
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
                  height: MediaQuery.of(context).size.height / 2,
                   child: ListView.builder(
                itemCount: 2,
                itemBuilder: (index,context){
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
                    
          ));
                
                   }),
                 ) ],
        ),
        ]),
    );
  }
}
