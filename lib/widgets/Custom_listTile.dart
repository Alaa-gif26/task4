import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {required this.title,
      required this.subtitle,
      required this.color,
      super.key});

  String title;
  String subtitle;
  Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ,
      tileColor: color,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
