class Project {
  String projectName;
  int projectYear;
  String projectDescription;
  String imageUrl;
  List<String>? technologiesUsed;

  Project(
      {required this.projectName,
      required this.projectYear,
      required this.projectDescription,
      required this.imageUrl,
      this.technologiesUsed});
}
