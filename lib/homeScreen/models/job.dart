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
    quaification:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    aboutTheJob:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sem mi, gravida vel magna at, convallis gravida diam. Quisque mi tortor, sodales id pulvinar vulputate, egestas in magna. Sed suscipit, lectus vitae consectetur egestas, nisl ligula eleifend est, id scelerisque velit risus ut nisi. Mauris tempus eleifend luctus. Mauris non.",
    city: "Business Bay",
    country: "Dubai",
  ),
  Job(
    companyName: "Phone Pe",
    companyImage: "lib/homeScreen/assets/images/PhonePeLogo.png",
    jobTitle: "Graphic Designer",
    quaification:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    aboutTheJob:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sem mi, gravida vel magna at, convallis gravida diam. Quisque mi tortor, sodales id pulvinar vulputate, egestas in magna. Sed suscipit, lectus vitae consectetur egestas, nisl ligula eleifend est, id scelerisque velit risus ut nisi. Mauris tempus eleifend luctus. Mauris non.",
    city: "London",
    country: "England",
  ),
  Job(
    companyName: "Google",
    companyImage: "lib/homeScreen/assets/images/GoogleLogo.png",
    jobTitle: "UX Designer",
    quaification:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    aboutTheJob:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sem mi, gravida vel magna at, convallis gravida diam. Quisque mi tortor, sodales id pulvinar vulputate, egestas in magna. Sed suscipit, lectus vitae consectetur egestas, nisl ligula eleifend est, id scelerisque velit risus ut nisi. Mauris tempus eleifend luctus. Mauris non.",
    city: "London",
    country: "England",
  ),
  Job(
    companyName: "Apple",
    companyImage: "lib/homeScreen/assets/images/AppleLogo.png",
    jobTitle: "iOS Developer",
    quaification:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    aboutTheJob:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sem mi, gravida vel magna at, convallis gravida diam. Quisque mi tortor, sodales id pulvinar vulputate, egestas in magna. Sed suscipit, lectus vitae consectetur egestas, nisl ligula eleifend est, id scelerisque velit risus ut nisi. Mauris tempus eleifend luctus. Mauris non.",
    city: "Palo Alto",
    country: "USA",
  ),
  Job(
    companyName: "Microsoft",
    companyImage: "lib/homeScreen/assets/images/MicrosoftLogo.png",
    jobTitle: "ML Engineer",
    quaification:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    aboutTheJob:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sem mi, gravida vel magna at, convallis gravida diam. Quisque mi tortor, sodales id pulvinar vulputate, egestas in magna. Sed suscipit, lectus vitae consectetur egestas, nisl ligula eleifend est, id scelerisque velit risus ut nisi. Mauris tempus eleifend luctus. Mauris non.",
    city: "Silicon Valley",
    country: "USA",
  ),
];
