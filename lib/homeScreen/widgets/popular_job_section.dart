import 'package:flutter/material.dart';

import '../../constants.dart';

class PopularJobSection extends StatelessWidget {
  const PopularJobSection({
    Key? key,
    required Size size,
  }) : _size = size, super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Popular job",
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
            Chip(
              label: const Text("See all"),
              backgroundColor: Colors.grey[200],
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Container(
          height: _size.height * 0.23,
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: byjusColor,
            borderRadius: BorderRadius.circular(36.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(10.0),
                    child: Image.asset(
                      "lib/homeScreen/assets/images/ByjusLogo.jpg",
                      height: 54.0,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Text(
                    "Byju's",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 50.0,
                    width: 84.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.circular(16.0),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Apply",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Lead Product Designer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Bengaluru, Karnatake, India",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}