import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/bottomAppbarPages/createorders.dart';
import 'package:returnpostcustomer/screens/bottomAppbarPages/home.dart';
import 'package:returnpostcustomer/screens/bottomAppbarPages/orders.dart';
import 'package:returnpostcustomer/screens/bottomAppbarPages/chat.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Home(),
    Orders(),
    Chat(),
     CreateOrders()
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      
      bottomNavigationBar: BottomAppBar(
              color:  Color(0xff404040),
                child: Container(
                  height: 60,
                  child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Home(); // if user taps on this dashboard tab will be active
                                currentTab = 0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                currentTab == 0 ? Image.asset('assets/homered.png',height: 24,width: 24,) : Image.asset('assets/home.png',height: 18,width: 18,)
                               
                              ],
                            ),
                          ),
                          //Orders
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Orders(); // if user taps on this dashboard tab will be active
                                currentTab = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               currentTab == 1 ? Image.asset('assets/ordersred.png',height: 24,width: 24,) : Image.asset('assets/orderswhite.png',height: 18,width: 18,)
                                
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Chat(); // if user taps on this dashboard tab will be active
                                currentTab = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               currentTab == 2 ? Image.asset('assets/chatred.png',height: 24,width: 24,) : Image.asset('assets/chatwhite.png',height: 18,width: 18,)
                               
                              ],
                            ),
                          ),

                          ///Create Orders
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    CreateOrders();// if user taps on this dashboard tab will be active
                                currentTab = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/add.png',height: 60, width:60)
                              
                              ],
                            ),
                          )
                        ],
                      ),

                     
                    
                   
                ),
           
            
          
      
      ),
    );
  }
}