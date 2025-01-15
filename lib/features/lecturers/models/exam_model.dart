import 'package:student/features/lecturers/models/answers_model.dart';

class ExamModel {
  final int? id;
  final String name;
  final List<AnswersModel> answers;
  final double? percentage;

  ExamModel({
    this.id,
    required this.name,
    required this.answers,
    this.percentage,
  });
}
