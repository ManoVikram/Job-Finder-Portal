import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  late final Animation<double> _dpAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );

    _dpAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        0.4,
        curve: Curves.decelerate,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Expanded(
                child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, snapshot) {
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
                              (20.0 * _dpAnimation.value) +
                                  (-60 * (1 - _dpAnimation.value)),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "lib/onboardingScreen/assets/DP_01.jpg"),
                              radius: 36.0,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(
                              (_size.width * 0.04 * _dpAnimation.value) +
                                  (-100 * (1 - _dpAnimation.value)),
                              (150.0 * _dpAnimation.value) +
                                  (250 * (1 - _dpAnimation.value)),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "lib/onboardingScreen/assets/DP_02.jpg"),
                              radius: 30.0,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(
                              (_size.width * 0.6 * _dpAnimation.value) +
                                  (_size.width * (1 - _dpAnimation.value)),
                              (220.0 * _dpAnimation.value) +
                                  (300.0 * (1 - _dpAnimation.value)),
                            ),
                            // offset: Offset(_size.width, 300.0),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "lib/onboardingScreen/assets/DP_03.jpg"),
                              radius: 50.0,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(
                              (_size.width * 0.25 * _dpAnimation.value) +
                                  (_size.width *
                                      0.1 *
                                      (1 - _dpAnimation.value)),
                              (260.0 * _dpAnimation.value) +
                                  (400 * (1 - _dpAnimation.value)),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "lib/onboardingScreen/assets/DP_04.jpg"),
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
                              backgroundImage: AssetImage(
                                  "lib/onboardingScreen/assets/DP_05.png"),
                              radius: 28.0,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(
                              (_size.width * 0.53 * _dpAnimation.value) +
                                  (_size.width *
                                      0.65 *
                                      (1 - _dpAnimation.value)),
                              (20.0 * _dpAnimation.value) +
                                  (-200 * (1 - _dpAnimation.value)),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "lib/onboardingScreen/assets/DP_06.png"),
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
                    }),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 60.0),
                    const Text(
                      "Find A Perfect\nJob Match.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.0,
                        fontWeight: FontWeight.w900,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const Text(
                      "One place with the best jobs\ncompanies in tech!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const SizedBox(
                          height: 80.0,
                          width: 80.0,
                          child: CircularProgressIndicator(
                            color: primaryColor,
                            strokeWidth: 1.5,
                            value: 0.3,
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
