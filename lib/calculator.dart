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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomWidget(
                  btnText: "AC",
                ),
                CustomWidget(
                  btnText: "C",
                ),
                CustomWidget(
                  btnText: "%",
                ),
                CustomWidget(
                  btnText: "/",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomWidget(
                  btnText: "7",
                ),
                CustomWidget(
                  btnText: "8",
                ),
                CustomWidget(
                  btnText: "9",
                ),
                CustomWidget(
                  btnText: "*",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomWidget(
                  btnText: "4",
                ),
                CustomWidget(
                  btnText: "5",
                ),
                CustomWidget(
                  btnText: "6",
                ),
                CustomWidget(
                  btnText: "-",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomWidget(
                  btnText: "1",
                ),
                CustomWidget(
                  btnText: "2",
                ),
                CustomWidget(
                  btnText: "3",
                ),
                CustomWidget(
                  btnText: "+",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomWidget(
                  btnText: ".",
                ),
                CustomWidget(
                  btnText: "0",
                ),
                CustomWidget(
                  btnText: "00",
                ),
                CustomWidget(
                  btnText: "=",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
