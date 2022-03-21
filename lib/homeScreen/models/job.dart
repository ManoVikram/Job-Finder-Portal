class Job {
  final String companyName;
  final String companyImage;
  final String jobTitle;
  final String quaification;
  final String aboutTheJob;
  final String city;
  final String country;

  Job({
    required this.companyName,
    required this.companyImage,
    required this.jobTitle,
    required this.quaification,
    required this.aboutTheJob,
    required this.city,
    required this.country,
  });
}

List<Job> jobs = [
  Job(
    companyName: "Spotify",
    companyImage: "lib/homeScreen/assets/images/SpotifyLogo.png",
    jobTitle: "Product Designer",
    quaification: "",
    aboutTheJob: "",
    city: "Business Bay",
    country: "Dubai",
  ),
  Job(
    companyName: "Phone Pe",
    companyImage: "lib/homeScreen/assets/images/PhonePeLogo.png",
    jobTitle: "Graphic Designer",
    quaification: "",
    aboutTheJob: "",
    city: "London",
    country: "England",
  ),
  Job(
    companyName: "Google",
    companyImage: "lib/homeScreen/assets/images/GoogleLogo.png",
    jobTitle: "UX Designer",
    quaification: "",
    aboutTheJob: "",
    city: "London",
    country: "England",
  ),
  Job(
    companyName: "Apple",
    companyImage: "lib/homeScreen/assets/images/AppleLogo.png",
    jobTitle: "iOS Developer",
    quaification: "",
    aboutTheJob: "",
    city: "Palo Alto",
    country: "USA",
  ),
  Job(
    companyName: "Microsoft",
    companyImage: "lib/homeScreen/assets/images/MicrosoftLogo.png",
    jobTitle: "ML Engineer",
    quaification: "",
    aboutTheJob: "",
    city: "Silicon Valley",
    country: "USA",
  ),
];
