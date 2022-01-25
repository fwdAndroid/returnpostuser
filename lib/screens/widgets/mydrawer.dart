import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/drawerscreens/referafriend.dart';
import 'package:returnpostcustomer/screens/drawerscreens/setting/setting.dart';
import 'package:returnpostcustomer/screens/drawerscreens/support.dart';
import 'package:returnpostcustomer/screens/drawerscreens/transactionhistory.dart';
import 'package:returnpostcustomer/screens/payments/payments.dart';
import 'package:returnpostcustomer/screens/profile/profilesettting.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Color(0xff404040),
      child: ListView(
        
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/back.png',height: 100,width: 50,)),
                      Text(
                  'My Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset('assets/shape.png'),
                  title: Text(
                    'Oliver Anderson',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  subtitle: Text(
                    '4.5',
                    style: TextStyle(color: Color(0xffEB5757)),
                  ),
                )
              ],
            ),
          ),
        
          Container(
              margin: EdgeInsets.only(left: 10,top: 30),
              child: Text(
                'General',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/profile.png',
              height: 30,
            ),
            title: const Text(
              'Profile Settings',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => ProfileSettings()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/earn.png',
              height: 30,
            ),
            title: const Text(
              'Payments',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (builder) => Payments()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/history.png',
              height: 30,
            ),
            title: const Text(
              'Transaction History',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => TransactionHistory()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/set.png',
              height: 30,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (builder) => Setting()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/faq.png',
              height: 30,
            ),
            title: const Text(
              'Support',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => Support()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/faq.png',
              height: 30,
            ),
            title: const Text(
              'Refer a friend to earn',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => ReferAFriend()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            leading: Image.asset(
              'assets/log.png',
              height: 30,
            ),
            title: const Text(
              'Log out',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
