import 'package:flutter/material.dart';

import '../../constants.dart';

class DisplayPictures extends StatelessWidget {
  const DisplayPictures({
    Key? key,
    required Size size,
    required Animation<double> dpAnimation,
  })  : _size = size,
        _dpAnimation = dpAnimation,
        super(key: key);

  final Size _size;
  final Animation<double> _dpAnimation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        /* Positioned(
          top: _size.height * 0.15,
          left: 20.0,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/DP_01.jpg"),
            radius: 36.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.03,
          left: 80.0,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/DP_02.jpg"),
            radius: 30.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.25,
          right: 40.0,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/DP_03.jpg"),
            radius: 50.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.15,
          right: 30.0,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/DP_04.jpg"),
            radius: 20.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.05,
          right: 60.0,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/DP_05.png"),
            radius: 28.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.33,
          left: 90.0,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/DP_06.png"),
            radius: 26.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.15,
          left: _size.width / 3,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
                "lib/onboardingScreen/assets/Profile Picture (1).png"),
            radius: 40.0,
          ),
        ), */
        Transform.translate(
          offset: Offset(
            (_size.width * 0.15 + _dpAnimation.value) +
                (-60 * (1 - _dpAnimation.value)),
            (20.0 * _dpAnimation.value) + (-60 * (1 - _dpAnimation.value)),
          ),
          child: const CircleAvatar(
            backgroundImage:
                AssetImage("lib/onboardingScreen/assets/DP_01.jpg"),
            radius: 36.0,
          ),
        ),
        Transform.translate(
          offset: Offset(
            (_size.width * 0.04 * _dpAnimation.value) +
                (-100 * (1 - _dpAnimation.value)),
            (150.0 * _dpAnimation.value) + (250 * (1 - _dpAnimation.value)),
          ),
          child: const CircleAvatar(
            backgroundImage:
                AssetImage("lib/onboardingScreen/assets/DP_02.jpg"),
            radius: 30.0,
          ),
        ),
        Transform.translate(
          offset: Offset(
            (_size.width * 0.6 * _dpAnimation.value) +
                (_size.width * (1 - _dpAnimation.value)),
            (220.0 * _dpAnimation.value) + (300.0 * (1 - _dpAnimation.value)),
          ),
          // offset: Offset(_size.width, 300.0),
          child: const CircleAvatar(
            backgroundImage:
                AssetImage("lib/onboardingScreen/assets/DP_03.jpg"),
            radius: 50.0,
          ),
        ),
        Transform.translate(
          offset: Offset(
            (_size.width * 0.25 * _dpAnimation.value) +
                (_size.width * 0.1 * (1 - _dpAnimation.value)),
            (260.0 * _dpAnimation.value) + (400 * (1 - _dpAnimation.value)),
          ),
          child: const CircleAvatar(
            backgroundImage:
                AssetImage("lib/onboardingScreen/assets/DP_04.jpg"),
            radius: 20.0,
          ),
        ),
        Transform.translate(
          offset: Offset(
            (_size.width * 0.65 * _dpAnimation.value) +
                (_size.width * (1 - _dpAnimation.value)),
            100.0,
          ),
          child: const CircleAvatar(
            backgroundImage:
                AssetImage("lib/onboardingScreen/assets/DP_05.png"),
            radius: 28.0,
          ),
        ),
        Transform.translate(
          offset: Offset(
            (_size.width * 0.53 * _dpAnimation.value) +
                (_size.width * 0.65 * (1 - _dpAnimation.value)),
            (20.0 * _dpAnimation.value) + (-200 * (1 - _dpAnimation.value)),
          ),
          child: const CircleAvatar(
            backgroundImage:
                AssetImage("lib/onboardingScreen/assets/DP_06.png"),
            radius: 26.0,
          ),
        ),
        Positioned(
          top: _size.height * 0.15,
          left: _size.width / 3,
          child: Transform.scale(
            scale: 1.0 * _dpAnimation.value,
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                  "lib/onboardingScreen/assets/Profile Picture (1).png"),
              radius: 40.0,
            ),
          ),
        ),
      ],
    );
  }
}