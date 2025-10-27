// Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 35),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           type == double
//                               ? Text(
//                                   result.toStringAsFixed(2),
//                                   style: TextStyle(fontSize: 45),
//                                 )
//                               : Text('$result', style: TextStyle(fontSize: 45)),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 7,
//                         horizontal: 10,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     result = 0;
//                                     value1 = 0;
//                                     value2 = 0;
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   'AC',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (result != 0) {
//                                       result ~/= 10;
//                                       value1 ~/= 10;
//                                       value2 ~/= 10;
//                                     } else {
//                                       result = 0;
//                                       value1 = 0;
//                                       value2 = 0;
//                                     }
//                                     // value1 -= value1;
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.clear_fill),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (result != 0) {
//                                       result ~/= 100;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.percent),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     op = '÷';
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.divide),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 7,
//                         horizontal: 10,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     // value1 = 9;
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 9;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 9;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 9;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 9;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '9',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 8;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 8;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 8;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 8;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '8',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 7;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 7;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 7;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 7;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '7',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     setState(() {
//                                       op = 'x';
//                                     });
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.multiply),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 7,
//                         horizontal: 10,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 6;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 6;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 6;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 6;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '6',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 5;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 5;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 5;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 5;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '5',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 4;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 4;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 4;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 4;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '4',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     op = '-';
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.minus),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 7,
//                         horizontal: 10,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 3;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 3;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 3;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 3;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '3',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 2;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 2;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 2;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 2;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '2',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 1;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 1;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 1;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 1;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '1',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     op = '+';
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.plus),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 7,
//                         horizontal: 10,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {},
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.cube_box),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     if (op == null) {
//                                       if (value1 == 0) {
//                                         value1 = 0;
//                                       } else {
//                                         value1 *= 10;
//                                         value1 += 0;
//                                       }
//                                       result = value1;
//                                     } else {
//                                       if (value2 == 0) {
//                                         value2 = 0;
//                                       } else {
//                                         value2 *= 10;
//                                         value2 += 0;
//                                       }
//                                       result = value2;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '0',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {},
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   '.',
//                                   style: TextStyle(fontSize: 25),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 2,
//                               horizontal: 10,
//                             ),
//                             child: Container(
//                               height: height * 0.075,
//                               width: width * 0.18,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 0.1,
//                                     spreadRadius: 0.1,
//                                   ),
//                                 ],
//                               ),
//                               child: MaterialButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     result = 0;
//                                     if (op == '+') {
//                                       result = value1 + value2;
//                                     } else if (op == '-') {
//                                       result = value1 - value2;
//                                     } else if (op == 'x') {
//                                       result = value1 * value2;
//                                     } else if (op == '÷') {
//                                       result = value1 ~/ value2;
//                                     } else {
//                                       result = 1;
//                                     }
//                                   });
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     20,
//                                   ),
//                                 ),
//                                 child: Icon(CupertinoIcons.equal),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
                  