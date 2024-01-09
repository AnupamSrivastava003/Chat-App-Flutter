import 'package:chat_app/theme/themeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Settings")),
      body: Container(
        margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dark Mode",
              style: TextStyle(fontSize: 18),
            ),
            CupertinoSwitch(
                value: Provider.of<ThemeProvider>(context, listen: false)
                    .isDarkNode,
                onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme())
          ],
        ),
      ),
    );
  }
}
