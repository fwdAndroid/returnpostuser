import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/drawerscreens/setting/countrycurrencyselecion.dart';
import 'package:returnpostcustomer/screens/drawerscreens/setting/countryselection.dart';

class CurrenySelection extends StatefulWidget {
  const CurrenySelection({Key? key}) : super(key: key);

  @override
  _CurrenySelectionState createState() => _CurrenySelectionState();
}

class _CurrenySelectionState extends State<CurrenySelection> {
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
        children: [
          Container(
            width: 250,
           
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Country and currency',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder) => CountrySelecion()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 20,top: 30),
              height: 60,
              width: 310,
              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Color(0xff535353),
                borderRadius: new BorderRadius.circular(15),
              ),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Country',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),)),
                Spacer(),
                Text('Pakistan',style: TextStyle(color: Color(0xff8D8989),fontSize: 12,fontWeight: FontWeight.w600),),
                Container(
                   margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.arrow_forward_ios,color: Color(0xff8D8989),))
              ],)
            ),
          ),
          InkWell(
            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder) => CountryCurrencySelecion()));

            },
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 20,top: 20),
              height: 60,
              width: 310,
              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Color(0xff535353),
                borderRadius: new BorderRadius.circular(15),
              ),
              // border: Border.all(color: Colors.grey,width: 0.5)

              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Currency',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),)),
                Spacer(),
                Text('£',style: TextStyle(color: Color(0xff8D8989),fontSize: 12,fontWeight: FontWeight.w600),),
                Container(
                   margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.arrow_forward_ios,color: Color(0xff8D8989),))
              ],)
            ),
          ),
        ],
      ),
    );
  }
}
