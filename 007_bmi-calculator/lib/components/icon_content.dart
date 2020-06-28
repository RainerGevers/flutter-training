import 'package:flutter/material.dart';

import '../constants.dart';

class GenderSelectionWidget extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  GenderSelectionWidget({@required this.genderIcon, @required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
