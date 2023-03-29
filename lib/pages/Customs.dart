import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CPage extends StatefulWidget {
  String Name;
  CPage({Key? key, required this.Name}) : super(key: key);

  @override
  State<CPage> createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(widget.Name),
            )),
      ),
    );
  }
}
