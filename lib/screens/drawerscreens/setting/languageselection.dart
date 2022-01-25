import 'package:flutter/material.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({ Key? key }) : super(key: key);

  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}
enum SingingCharacter { lafayette, jefferson }

class _LanguageSelectionState extends State<LanguageSelection> {
    SingingCharacter? _character = SingingCharacter.lafayette;

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
        children: [
           Container(
            width: 237,
            height: 88,
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: Text(
              'Language',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
             margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
             decoration: BoxDecoration(
              color: Color(0xffEB5757),
              borderRadius: new BorderRadius.circular(15),
            ),
            child: RadioListTile<SingingCharacter>(
              controlAffinity: ListTileControlAffinity.trailing,
              selectedTileColor:    Color(0xffEB5757),
            title: const Text('English',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600)),
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
        ),
          ),
        Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 10),
           decoration: BoxDecoration(
              color: Color(0xff535353),
              borderRadius: new BorderRadius.circular(15),
            ),
          child: RadioListTile<SingingCharacter>(
              controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Urdu',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600)),
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ],
      ),
    );
  }
}