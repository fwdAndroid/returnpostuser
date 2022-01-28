import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({ Key? key }) : super(key: key);

  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  var scalfoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/back.png',height: 60,width: 60,fit: BoxFit.contain,),
        ),),
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: scalfoldKey,
        backgroundColor: Color(0xff404040),
       // drawer: MyDrawer(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/map.png'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
            


      
                    Expanded(
                      child: Image.asset(
                          'assets/track.png',
                          width: 347,
                          height: 414.19,
                        ),
                    ),
                   
                
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                     // showNextModal(context);
                    },
                    child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'assets/par.png',
                         height: 100,width: 100,fit: BoxFit.contain,
                        )),
                  ),
                  InkWell(
                    child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'assets/mapss.png',
                          height: 100,width: 100,fit: BoxFit.contain,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showNextModal(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor:Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff404040),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: 160,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                   
                    
                   ListTile(
                      title:  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('10 min',style:  GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 36,
                              fontStyle: FontStyle.normal,
                            ),),
                    ),
                      subtitle: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('0.1 mi · 12:12',style:  GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w700,
                              color: Color(0xff8D8989),
                              fontSize: 10,
                              fontStyle: FontStyle.normal,
                            ),),
                    ),
                      trailing: InkWell(
                      //  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (builder) => FullOrderDetail())),
                        child: Image.asset('assets/info.png',height: 100,width: 100,fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 20,bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset('assets/circle.png'),
                        SizedBox(width: 20,),
                        Text('12 Blueberry Ln, London, EC5M 6JN',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight:FontWeight.w500),)
                      ],),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}