import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
          ),
        ));
  }
}
