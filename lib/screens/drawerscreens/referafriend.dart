import 'package:flutter/material.dart';

class ReferAFriend extends StatefulWidget {
  const ReferAFriend({ Key? key }) : super(key: key);

  @override
  _ReferAFriendState createState() => _ReferAFriendState();
}

class _ReferAFriendState extends State<ReferAFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xff404040),
  appBar: AppBar(
      
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              InkWell(onTap: () {
                Navigator.pop(context);
              }, child: Image.asset('assets/back.png')),
        ),
       
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Refer a friend and earn ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),),

         Container(
           margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           child: Image.asset('assets/five.png'),
         ),
           Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'If you enjoy the app, refer your friends and receive a £ 0.50 reward!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),),  
                   Container(
                  margin: EdgeInsets.only(left: 20, top: 10,right: 20),
                  child: Text(
                    'Share your love for Return Post with your bestie and unlock big bonuses. They ll no doubt fall for our Supadupa service. And your friend make their first order, you ll pocket £0.50 in your account balance! But hurry! This offer wont stick around.',
                    style: TextStyle(
                        color: Color(0xff8D8989),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                        textAlign: TextAlign.justify,
                  ),),        
                   Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                      //  padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Color(0xff535353),
                        borderRadius: new BorderRadius.circular(20),
                      ),
                      // border: Border.all(color: Colors.grey,width: 0.5)

                      child: TextFormField(
                        //  textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: '122455',
                          suffixIcon: Icon(Icons.copy,color: Colors.white,),
                          contentPadding: EdgeInsets.only(top: 20, left: 20),
                          border: InputBorder.none,
                        
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white, // <-- Change this
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      )),
                        Center(
                          child: Container(
                           margin: EdgeInsets.only(top: 20,right: 20,bottom: 10,left: 20),
                           child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                            primary: Color(0xffEB5757),
                            minimumSize: Size(310, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23)),
                      ),
                      onPressed: () {
                            //  Navigator.push(context,
                            //    MaterialPageRoute(builder: (context) => Signinpage()));
                      },
                      child: Text(
                            'Invite Friend',
                            style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                       ),
                        ),

        ],),
      ),
    );
  }
}