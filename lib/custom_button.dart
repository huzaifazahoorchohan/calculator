import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
    required this.btnText,
    required this.btnfillcolor,
    required this.callback,
  }) : super(key: key);

  final String btnText;
  final Color btnfillcolor;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 65.0,
        height: 65.0,
        child: ElevatedButton(
          onPressed: () => callback(btnText),
          child: Text(
            btnText,
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: btnfillcolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
