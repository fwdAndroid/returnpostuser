import 'package:flutter/material.dart';
import 'package:returnpostcustomer/screens/chat/chatbubble.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({ Key? key }) : super(key: key);

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
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
      body: ListView(children: [
         Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Hi,How are you, ',
                isCurrentUser: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Yes Let make a time',
                isCurrentUser: false,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Hi,How are you, ',
                isCurrentUser: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Yes Let make a time',
                isCurrentUser: false,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Hi,How are you, ',
                isCurrentUser: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Yes Let make a time',
                isCurrentUser: false,
              ),
            ),Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Hi,How are you, ',
                isCurrentUser: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ChatBubble(
                text: 'Yes Let make a time',
                isCurrentUser: false,
              ),
            )
      ],),);
  }
}