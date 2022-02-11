import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({
    Key? key,
  }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _expression = "";
  String _history = "";
  double expFontSize = 44.0;
  double historyFontSize = 28.0;

  void btnClicked(String btnTxt) {
    _expression += btnTxt;
    setState(() {});
  }

  void allClear(String btnTxt) {
    _expression = "";
    _history = "";
    setState(() {});
  }

  void eraseLast(String btnTxt) {
    if (_expression.isNotEmpty) {
      _expression = _expression.substring(0, _expression.length - 1);
    }
    setState(() {});
  }

  void solved(String btnTxt) {
    if (_expression.isNotEmpty) {
      Parser p = Parser();
      Expression exp = p.parse(_expression);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      _history = _expression;
      _expression = eval.toString();

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff293241),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 0.0,
                ),
                child: Text(
                  _history,
                  style: TextStyle(
                    color: const Color(0xffbfc0c0),
                    fontWeight: FontWeight.w400,
                    fontSize: (_history.length > 19)
                        ? expFontSize = 18.0
                        : expFontSize = 28.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0,
                ),
                child: Text(
                  _expression,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (_expression.length > 12)
                        ? expFontSize = 33.0
                        : expFontSize = 44.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWidget(
                    btnText: "AC",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: allClear,
                  ),
                  CustomWidget(
                    btnText: "C",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: eraseLast,
                  ),
                  CustomWidget(
                    btnText: "%",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "/",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: btnClicked,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWidget(
                    btnText: "7",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "8",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "9",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "*",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: btnClicked,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWidget(
                    btnText: "4",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "5",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "6",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "-",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: btnClicked,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWidget(
                    btnText: "1",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "2",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "3",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "+",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: btnClicked,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomWidget(
                    btnText: ".",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "0",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "00",
                    btnfillcolor: const Color(0xff293241),
                    callback: btnClicked,
                  ),
                  CustomWidget(
                    btnText: "=",
                    btnfillcolor: const Color(0xffbfc0c0),
                    callback: solved,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
