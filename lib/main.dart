import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './onboardingScreen/onboarding_screen.dart';
import './homeScreen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Job Finder",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const JobFinder(),
    );
  }
}

class JobFinder extends StatefulWidget {
  const JobFinder({Key? key}) : super(key: key);

  @override
  State<JobFinder> createState() => JobFinderState();
}

class JobFinderState extends State<JobFinder> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingScreen(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
