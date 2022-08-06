import 'package:flutter/material.dart';
import '../constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 100),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'DO NOW',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40.0,
              color: kDarkBg,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Your personal to-do list',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
