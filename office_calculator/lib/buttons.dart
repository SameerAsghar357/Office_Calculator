import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  Widget child;
  VoidCallback onTap;
  Color color;
  buttons({super.key, required this.child, required this.onTap, required this.color});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 9),
      child: Container(
        height: height * 0.08,
        width: width * 0.19,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   BoxShadow(color: Colors.grey, blurRadius: 0.1, spreadRadius: 0.1),
          // ],
        ),
        child: MaterialButton(
          onPressed: onTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          child: child,
        ),
      ),
    );
  }
}
