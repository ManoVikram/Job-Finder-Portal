import 'package:flutter/material.dart';

import '../constants.dart';

import './widgets/header.dart';
import './widgets/home_screen_app_bar.dart';
import './widgets/near_by_job_section.dart';
import './widgets/popular_job_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  late final Animation<double> _appBarAnimation;
  late final Animation<double> _headerAnimation;
  late final Animation<double> _popularJobAnimation;
  late final Animation<double> _nearByJobAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _appBarAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        0.4,
        curve: Curves.decelerate,
      ),
    );

    _headerAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.1,
        0.6,
        curve: Curves.decelerate,
      ),
    );

    _popularJobAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.2,
        0.8,
        curve: Curves.decelerate,
      ),
    );

    _nearByJobAnimation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.3,
        1.0,
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
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Column(
                    children: [
                      Transform.translate(
                        offset: Offset(
                            0, _size.height * (1 - _appBarAnimation.value)),
                        child: const HomeScreenAppBar(),
                      ),
                      const SizedBox(height: 20.0),
                      Transform.translate(
                        offset: Offset(
                            0, _size.height * (1 - _headerAnimation.value)),
                        child: Header(size: _size),
                      ),
                      const SizedBox(height: defaultPadding),
                      Transform.translate(
                        offset: Offset(
                            0, _size.height * (1 - _popularJobAnimation.value)),
                        child: PopularJobSection(size: _size),
                      ),
                      const SizedBox(height: defaultPadding),
                      Transform.translate(
                        offset: Offset(
                            0, _size.height * (1 - _nearByJobAnimation.value)),
                        child: NearByJobSection(size: _size),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
