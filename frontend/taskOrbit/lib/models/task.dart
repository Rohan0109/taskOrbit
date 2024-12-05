// lib/models/task_model.dart
import 'package:uuid/uuid.dart';

class Task {
  final String id;
  String title;
  String description;
  TaskStatus status;

  Task({
    String? id,
    required this.title,
    this.description = '',
    this.status = TaskStatus.todo,
  }) : id = id ?? const Uuid().v4();

  Task copyWith({
    String? title,
    String? description,
    TaskStatus? status,
  }) {
    return Task(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }
}

enum TaskStatus {
  todo,
  inProgress,
  done
}