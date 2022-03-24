import 'package:flutter/material.dart';

import '../constants.dart';

import '../homeScreen/models/job.dart';
import './widgets/apply_button.dart';
import './widgets/job_details.dart';

class JobDescriptionScreen extends StatelessWidget {
  final Job job;

  const JobDescriptionScreen({
    Key? key,
    required this.size,
    required this.job,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: size.height * 0.85,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 1.5 * defaultPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(3, 0),
                blurRadius: 8.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: JobDetails(job: job),
        ),
        const ApplyButton(),
      ],
    );
  }
}
