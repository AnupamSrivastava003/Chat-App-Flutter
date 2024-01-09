import 'package:chat_app/theme/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentuser;
  const ChatBubble({super.key, required this.isCurrentuser, required this.message});

  @override
  Widget build(BuildContext context) {

    // light and dark mode
    bool isDarkMode = Provider.of<ThemeProvider>(context, listen: false).isDarkNode;

    return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
        decoration: BoxDecoration(
          color: isCurrentuser ? (isDarkMode ? Colors.green.shade600 : Colors.green.shade500) : (isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Text(message, style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
      
    );
  }
}