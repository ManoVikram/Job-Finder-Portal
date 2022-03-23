import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../models/job.dart';

class NearByJobSection extends StatelessWidget {
  const NearByJobSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              margin: const EdgeInsets.only(
                  bottom: defaultPadding),
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
              child: LayoutBuilder(
                  builder: (context, constraints) {
                return Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: constraints.maxHeight,
                      width: constraints.maxHeight,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius:
                            BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        jobs[index].companyImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
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
                        borderRadius:
                            BorderRadius.circular(10.0),
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
    );
  }
}