import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "lib/homeScreen/assets/icons/hamburgerIcon.svg",
          color: Colors.black,
          height: 36.0,
        ),
        const CircleAvatar(
          backgroundImage: AssetImage(
              "lib/homeScreen/assets/images/Profile Picture (1).png"),
          radius: 24.0,
        ),
      ],
    );
  }
}