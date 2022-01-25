import 'package:flutter/material.dart';
import 'package:returnpostcustomer/authentication/passwords/newpassword.dart';

class MakeSelection extends StatefulWidget {
  const MakeSelection({ Key? key }) : super(key: key);

  @override
  _MakeSelectionState createState() => _MakeSelectionState();
}

class _MakeSelectionState extends State<MakeSelection> {
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
      ),
      extendBody: true,
      backgroundColor: Color(0xff404040),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 237,
            height: 88,
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Make\nSelection',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 259,
            height: 42,
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Text(
              'Select which contact details we\nshould us to reset your password! ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewPassword()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEB5757),
              ),
              child: ListTile(
                title: Text(
                  'Via email',
                  style: TextStyle(
                      color: Color(0xff404040),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Icon(Icons.mobile_friendly_outlined),
                ),
                subtitle: Text(
                  '+38077777777',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}