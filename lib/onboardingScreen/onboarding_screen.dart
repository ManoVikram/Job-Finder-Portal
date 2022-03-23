import 'package:flutter/material.dart';

import '../constants.dart';

import '../homeScreen/home_screen.dart';
import './widgets/animated_login_button.dart';
import './widgets/display_pictures.dart';
import './widgets/intro_title_and_subtitle.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final AnimationController _loadingAnimationController;

  late final Animation<double> _dpAnimation;
  late final Animation<double> _textAnimation;
  late final Animation<double> _loaderTranslateAnimation;
  late final Animation<double> _loadingAnimation;

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

    _textAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.35,
        0.55,
        curve: Curves.decelerate,
      ),
    );

    _loaderTranslateAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.5,
        0.7,
        curve: Curves.decelerate,
      ),
    );

    _loadingAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _loadingAnimation = CurvedAnimation(
      parent: _loadingAnimationController,
      curve: Curves.easeInCubic,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _loadingAnimationController.dispose();
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
                      return DisplayPictures(
                          size: _size, dpAnimation: _dpAnimation);
                    }),
              ),
              Expanded(
                child: AnimatedBuilder(
                    animation: Listenable.merge(
                        [_animationController, _loadingAnimationController]),
                    builder: (context, snapshot) {
                      return Column(
                        children: [
                          const SizedBox(height: 60.0),
                          Opacity(
                            opacity: _textAnimation.value,
                            child: Transform.translate(
                              offset:
                                  Offset(0, 100 * (1 - _textAnimation.value)),
                              child: const IntroTitleAndSubtitle(),
                            ),
                          ),
                          Opacity(
                            opacity: _loaderTranslateAnimation.value,
                            child: Transform.translate(
                              offset: Offset(0,
                                  100 * (1 - _loaderTranslateAnimation.value)),
                              child: GestureDetector(
                                onTap: () async {
                                  await _loadingAnimationController.forward();

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ),
                                  );
                                },
                                child: AnimatedLoginButton(
                                    loadingAnimation: _loadingAnimation),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
