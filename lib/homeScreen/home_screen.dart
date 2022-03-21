import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

import './models/job.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
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
                ),
                const SizedBox(height: 20.0),
                Stack(
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
                      top:
                          (_size.height * 0.18) / 2 - (_size.height * 0.12) / 2,
                      right: 0,
                      child: Container(
                        height: _size.height * 0.12,
                        width: _size.width * 0.27,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(36.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ),
                const SizedBox(height: defaultPadding),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
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
                              borderRadius: BorderRadius.circular(16.0),
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
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Near by job",
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
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: jobs.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 86,
                      margin: const EdgeInsets.only(bottom: defaultPadding),
                      padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding,
                        horizontal: defaultPadding + 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(1, 0.5),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            color: Colors.grey[200]!,
                          ),
                          const BoxShadow(
                            offset: Offset(-1, -0.5),
                            blurRadius: 5.0,
                            spreadRadius: 0.25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: constraints.maxHeight,
                              width: constraints.maxHeight,
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Image.asset(
                                jobs[index].companyImage,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(width: defaultPadding),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  jobs[index].jobTitle,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${jobs[index].city}, ${jobs[index].country}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: constraints.maxHeight * 0.7,
                              width: constraints.maxHeight * 0.7,
                              padding: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SvgPicture.asset(
                                "lib/homeScreen/assets/icons/arrowRight.svg",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        );
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
