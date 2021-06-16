import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final String text;
  const KeyPad({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: TextButton(
        child: text == "del"
            ? Icon(
                Icons.backspace_outlined,
                size: 18,
                color: Colors.black,
              )
            : Text(
                text,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
        onPressed: () {},
      ),
    );
  }
}
