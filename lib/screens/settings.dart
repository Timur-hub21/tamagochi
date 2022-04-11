import 'package:flutter/material.dart';
import 'package:tamagochi_task/config.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(style: BorderStyle.solid, color: Colors.black),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Switch button to change theme of App',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        currentTheme.swtichTheme();
                        _switchValue = value;
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
