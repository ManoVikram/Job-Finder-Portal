import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required Size size,
  }) : _size = size, super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // This align and stuff is a stupid idea
        // I just realized that the simplest way is to add
        // paddings on all the sides of the container
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: _size.height * 0.19,
            width: _size.width * 0.75,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(36.0),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 36.0),
                child: Text(
                  "Find your\nPerfect job",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: (_size.height * 0.18) / 2 -
              (_size.height * 0.12) / 2,
          right: 0,
          child: Container(
            height: _size.height * 0.12,
            width: _size.width * 0.27,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(36.0),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  "lib/homeScreen/assets/icons/search.svg",
                  color: Colors.blueGrey[900],
                  height: 30.0,
                ),
                SvgPicture.asset(
                  "lib/homeScreen/assets/icons/mic.svg",
                  color: Colors.blueGrey[800],
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}