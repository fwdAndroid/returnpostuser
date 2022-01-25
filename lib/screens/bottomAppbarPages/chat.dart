import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/chat/chatdetails.dart';

class Chat extends StatefulWidget {
  const Chat({ Key? key }) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:  Color(0xff404040),
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
      body: ListView(
        children: [
            Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: 211,
                child: Text(
                  'Your Message',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),),

              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 13,
                  itemBuilder: (index,context){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(this.context, MaterialPageRoute(builder: (builder) => ChatDetails()));
                      },
                      leading: Image.asset('assets/shape.png'),
                      title: Text('Brooklyn Simmons',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white),),
                      subtitle: Text('Amet minim mollit non deserunt...',style: TextStyle(color: Color(0xff8D8989,),fontSize: 12),),
                      trailing: Text('2:41 PM',style: TextStyle(color: Color(0xff8D8989,),fontSize: 12),),
                    ),
                  );
                }),
              )  
        ],
      ),
    );
  }
}