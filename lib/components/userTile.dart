import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {

  final String text;
  final void Function()? onTap;

  const UserTile({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12)
        ),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image.asset("assets/user.png")),

            const SizedBox(width: 20,),

            Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}