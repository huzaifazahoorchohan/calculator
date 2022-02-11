import 'package:flutter/material.dart';

import 'custom_button.dart';

class Calculator extends StatelessWidget {
  const Calculator({
    Key? key,
  }) : super(key: key);

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
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 0.0,
                ),
                child: Text(
                  "123",
                  style: TextStyle(
                    color: Color(0xffbfc0c0),
                    fontWeight: FontWeight.w400,
                    fontSize: 28.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0,
                ),
                child: Text(
                  "2134",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 44.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomWidget(
                    btnText: "AC",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                  CustomWidget(
                    btnText: "C",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                  CustomWidget(
                    btnText: "%",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                  CustomWidget(
                    btnText: "/",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomWidget(
                    btnText: "7",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "8",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "9",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "*",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomWidget(
                    btnText: "4",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "5",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "6",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "-",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomWidget(
                    btnText: "1",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "2",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "3",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "+",
                    btnfillcolor: Color(0xffbfc0c0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomWidget(
                    btnText: ".",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "0",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "00",
                    btnfillcolor: Color(0xff293241),
                  ),
                  CustomWidget(
                    btnText: "=",
                    btnfillcolor: Color(0xffbfc0c0),
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
