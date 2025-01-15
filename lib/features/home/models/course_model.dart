class CourseModel {
  final int? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final int students;
  final int hours;

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.students,
    required this.hours,
  });
}
