import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class AnimatedLoginButton extends StatelessWidget {
  const AnimatedLoginButton({
    Key? key,
    required Animation<double> loadingAnimation,
  })  : _loadingAnimation = loadingAnimation,
        super(key: key);

  final Animation<double> _loadingAnimation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 90.0,
          width: 90.0,
          child: CircularProgressIndicator(
            color: primaryColor,
            strokeWidth: 1.5,
            value: _loadingAnimation.value,
          ),
        ),
        Container(
          height: 60.0,
          width: 60.0,
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            "lib/onboardingScreen/assets/Sign_in_squre_light.svg",
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}