import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/drawerscreens/setting/currencyselection.dart';
import 'package:returnpostcustomer/screens/drawerscreens/setting/languageselection.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
      bool _lights = true;

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
        children: [
          Container(
            width: 237,
            height: 88,
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Settings',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 20),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder) => LanguageSelection()));
              },
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              shape: CircleBorder(),
              leading: Text(
                'Language',
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
            margin: EdgeInsets.only(left: 30, right: 20,top: 15),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: ListTile(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (builder) => CurrenySelection()));

              },
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              shape: CircleBorder(),
              leading: Text(
                'Country and currency',
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
            margin: EdgeInsets.only(left: 30, right: 20,top: 15),
            height: 60,
            width: 310,
            //  padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
            // border: Border.all(color: Colors.grey,width: 0.5)

            child: SwitchListTile(
              selectedTileColor: Color(0xffEB5757),
              activeColor: Color(0xffEB5757),
              activeTrackColor:  Color(0xffEB5757),
      title: const Text('Notifications',style: TextStyle( color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),),
      value: _lights,
      onChanged: (bool value) {
        setState(() {
          _lights = value;
        });
      },
     
    )
          ),
        ],
      ),
    );
  }
}
