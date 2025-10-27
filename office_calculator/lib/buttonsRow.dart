import 'package:flutter/material.dart';
import 'package:office_calculator/buttons.dart';

class buttonsRow extends StatelessWidget {
  Widget child1, child2, child3, child4;
  VoidCallback onTap1, onTap2, onTap3, onTap4;
  Color color1,color2, color3, color4 ;
  buttonsRow({super.key, 
    required this.child1,
    required this.child2,
    required this.child3,
    required this.child4,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
    required this.onTap4,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          buttons(onTap: onTap1, child: child1, color: color1,),
          buttons(onTap: onTap2, child: child2, color: color2,),
          buttons(onTap: onTap3, child: child3, color: color3),
          buttons(onTap: onTap4, child: child4, color: color4),
        ],
      ),
    );
  }
}
