import 'package:flutter/material.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  String? selectedValue;
  List<String> namesList = ["Afia","Farooq","Arslan","Muaaz"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          hint: Text("Select Name"),
          value: selectedValue,
          items: namesList.map((String value){
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value)
            );
          }).toList(),
          onChanged: (value){
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
