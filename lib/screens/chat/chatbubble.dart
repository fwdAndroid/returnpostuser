
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 10.0 : 10.0,
        4,
        isCurrentUser ? 10.0 : 10.0,
        4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Align(
              // align the child within the container
              alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerRight,
              child: DecoratedBox(
                // chat bubble decoration
                decoration: BoxDecoration(
                  color: isCurrentUser ? Color(0xff535353) : Color(0xff535353),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: isCurrentUser ? Colors.white : Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}