import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/drawerscreens/frequently.dart';

class Support extends StatefulWidget {
  const Support({ Key? key }) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text('Support',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
           Container(
            margin: EdgeInsets.only(left: 30, right: 30,top: 20),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(20),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: ListTile(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (builder) => FAQ()));
              },
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              shape: CircleBorder(),
              leading: Text(
                'FAQ’s',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff8D8989),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30,top: 20),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(20),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: ListTile(
              onTap: (){
              },
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              shape: CircleBorder(),
              leading: Text(
                'Report Problems',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff8D8989),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30,top: 20),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(20),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: ListTile(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (builder) => LanguageSelection()));
              },
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              shape: CircleBorder(),
              leading: Text(
                'Terms & Condition',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff8D8989),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 30, right: 30,top: 20),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(20),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: ListTile(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (builder) => LanguageSelection()));
              },
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              shape: CircleBorder(),
              leading: Text(
                'Feedbacks',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff8D8989),
              ),
            ),
          ),
    ],),
    );
  }
}