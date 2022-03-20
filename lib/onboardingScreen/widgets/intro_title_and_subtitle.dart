import 'package:flutter/material.dart';

import '../../constants.dart';

class IntroTitleAndSubtitle extends StatelessWidget {
  const IntroTitleAndSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Find A Perfect\nJob Match.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 36.0,
            fontWeight: FontWeight.w900,
            height: 1.1,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          "One place with the best jobs\ncompanies in tech!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}