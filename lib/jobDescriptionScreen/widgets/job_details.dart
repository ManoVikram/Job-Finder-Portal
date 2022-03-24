import 'package:flutter/material.dart';

import '../../constants.dart';

import '../../homeScreen/models/job.dart';

class JobDetails extends StatelessWidget {
  final Job job;

  const JobDetails({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50.0),
          CircleAvatar(
            backgroundImage: AssetImage(job.companyImage),
            radius: 36.0,
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: defaultPadding),
          Text(
            job.jobTitle,
            style: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Text(
            "${job.city}, ${job.country}",
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 1.7 * defaultPadding),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Qualification",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Text(
                  job.quaification,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 2 * defaultPadding),
                const Text(
                  "About The Job",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Text(
                  job.aboutTheJob,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200.0),
        ],
      ),
    );
  }
}