import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:office_calculator/buttonsRow.dart';

class calculator_ui extends StatefulWidget {
  const calculator_ui({super.key});

  @override
  State<calculator_ui> createState() => _calculator_uiState();
}

// int value1 = 0;
// int value2 = 0;
// int result = 0;

class _calculator_uiState extends State<calculator_ui> {
  String? op;
  String output = '';
  String input = '';
  double num1 = 0, num2 = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculator'),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        color: Colors.amber,
        height: height * 1.0,
        width: width * 1.0,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // height: height * .5,
                width: width * 1,
                color: Colors.grey[100],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // height: height * .5,
                width: width * 1,
                // color: Colors.white,
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      // SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(output, style: TextStyle(fontSize: 50)),
                          ],
                        ),
                      ),
                      buttonsRow(
                        color1: Colors.white,
                        color2: Colors.white,
                        color3: Colors.white,
                        color4: Colors.white,
                        child1: Text('AC', style: TextStyle(fontSize: 25)),
                        child2: Icon(
                          CupertinoIcons.clear_circled_solid,
                          color: Colors.orange,
                        ),
                        child3: Icon(
                          CupertinoIcons.percent,
                          color: Colors.orange,
                        ),
                        child4: Icon(
                          CupertinoIcons.divide,
                          color: Colors.orange,
                        ),
                        onTap1: () {
                          setState(() {
                            output = '0';
                            input = '';
                            num1 = num2 = 0;
                            op = null;
                          });
                        },
                        onTap2: () {
                          setState(() {
                            if (input != '0') {
                              input = input.substring(0, input.length - 1);
                            } else if (input == '') {
                              input = '0';
                            }
                            output = input;
                          });
                        },
                        onTap3: () {
                          setState(() {
                            op = null;
                            input = (double.parse(input) / 100).toString();
                            output = input;
                          });
                        },
                        onTap4: () {
                          setState(() {
                            num1 = double.parse(input);
                            op = '÷';
                            input = '';
                          });
                        },
                      ),
                      buttonsRow(
                        color1: Colors.white,
                        color2: Colors.white,
                        color3: Colors.white,
                        color4: Colors.white,
                        child1: Text('7', style: TextStyle(fontSize: 25)),
                        child2: Text('8', style: TextStyle(fontSize: 25)),
                        child3: Text('9', style: TextStyle(fontSize: 25)),
                        child4: Icon(
                          CupertinoIcons.multiply,
                          color: Colors.orange,
                        ),
                        onTap1: () {
                          numberPressed(7);
                        },
                        onTap2: () {
                          numberPressed(8);
                        },
                        onTap3: () {
                          numberPressed(9);
                        },
                        onTap4: () {
                          setState(() {
                            num1 = double.parse(input);

                            op = 'x';
                            input = '0';
                            output = input;
                          });
                        },
                      ),
                      buttonsRow(
                        color1: Colors.white,
                        color2: Colors.white,
                        color3: Colors.white,
                        color4: Colors.white,
                        child1: Text('4', style: TextStyle(fontSize: 25)),
                        child2: Text('5', style: TextStyle(fontSize: 25)),
                        child3: Text('6', style: TextStyle(fontSize: 25)),
                        child4: Icon(
                          CupertinoIcons.minus,
                          color: Colors.orange,
                        ),
                        onTap1: () {
                          numberPressed(4);
                        },
                        onTap2: () {
                          numberPressed(5);
                        },
                        onTap3: () {
                          numberPressed(6);
                        },
                        onTap4: () {
                          setState(() {
                            num1 = double.parse(input);
                            op = '-';
                            input = '';
                          });
                        },
                      ),
                      buttonsRow(
                        color1: Colors.white,
                        color2: Colors.white,
                        color3: Colors.white,
                        color4: Colors.white,
                        child1: Text('1', style: TextStyle(fontSize: 25)),
                        child2: Text('2', style: TextStyle(fontSize: 25)),
                        child3: Text('3', style: TextStyle(fontSize: 25)),
                        child4: Icon(CupertinoIcons.plus, color: Colors.orange),
                        onTap1: () {
                          numberPressed(1);
                        },
                        onTap2: () {
                          numberPressed(2);
                        },
                        onTap3: () {
                          numberPressed(3);
                        },
                        onTap4: () {
                          setState(() {
                            num1 = double.parse(input);
                            op = '+';
                            input = '';
                          });
                        },
                      ),
                      buttonsRow(
                        color1: Colors.white,
                        color2: Colors.white,
                        color3: Colors.white,
                        color4: Colors.orange,
                        child1: Icon(CupertinoIcons.cube),
                        child2: Text('0', style: TextStyle(fontSize: 25)),
                        child3: Text('.', style: TextStyle(fontSize: 25)),
                        child4: Icon(CupertinoIcons.equal, color: Colors.white),
                        onTap1: () {},
                        onTap2: () {
                          numberPressed(0);
                        },
                        onTap3: () {
                          if (!input.contains('.')) {
                            setState(() {
                              input += '.';
                            });
                          }
                          output = input;
                        },
                        onTap4: () {
                          setState(() {
                            num2 = double.parse(input);
                            switch (op) {
                              case '+':
                                output = (num1 + num2).toString();
                                break;
                              case '-':
                                output = (num1 - num2).toString();
                                break;
                              case 'x':
                                output = (num1 * num2).toString();
                                break;
                              case '÷':
                                output = (num1 / num2).toString();
                                break;
                            }
                            input = output;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void numberPressed(int number) {
    // double temp = 0;
    setState(() {
      if (input == '0' || input.isEmpty) {
        input = number.toString();
      } else {
        input += number.toString();
      }
      output = input;
    });
  }
}
