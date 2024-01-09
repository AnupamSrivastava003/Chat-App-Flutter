import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const MyButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: TextButton(
          onPressed: onTap, 
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 60, 165, 251),
              borderRadius: BorderRadius.circular(20)
            ),
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(child: Text(
              buttonText, style: TextStyle(color: Theme.of(context).colorScheme.tertiary, fontSize: 16, fontWeight: FontWeight.w700),))),
      ),
    );

    
  }
}