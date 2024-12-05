// lib/widgets/kanban_column.dart
import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_card.dart';

class KanbanColumn extends StatelessWidget {
  final String title;
  final List<Task> tasks;
  final Color color;
  final void Function(Task task) onTaskAdded;
  final void Function(Task task, TaskStatus newStatus) onTaskStatusChanged;
  final void Function(Task task) onTaskDeleted;
  final void Function(Task task) onTaskEdited;

  const KanbanColumn({
    Key? key,
    required this.title,
    required this.tasks,
    required this.color,
    required this.onTaskAdded,
    required this.onTaskStatusChanged,
    required this.onTaskDeleted,
    required this.onTaskEdited,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => _showAddTaskDialog(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: DragTarget<Task>(
              builder: (context, candidateData, rejectedData) {
                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return Draggable<Task>(
                      data: task,
                      feedback: TaskCard(task: task),
                      childWhenDragging: Opacity(
                        opacity: 0.5,
                        child: TaskCard(task: task),
                      ),
                      child: TaskCard(
                        task: task,
                        onDelete: () => onTaskDeleted(task),
                        onEdit: () => _showEditTaskDialog(context, task),
                      ),
                    );
                  },
                );
              },
              onWillAccept: (task) => task != null,
              onAccept: (task) {
                // Determine the new status based on the column
                TaskStatus newStatus;
                switch (title) {
                  case 'Todo':
                    newStatus = TaskStatus.todo;
                    break;
                  case 'In Progress':
                    newStatus = TaskStatus.inProgress;
                    break;
                  case 'Done':
                    newStatus = TaskStatus.done;
                    break;
                  default:
                    newStatus = task.status;
                }
                onTaskStatusChanged(task, newStatus);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add New Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Task Title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  hintText: 'Description (Optional)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty) {
                  final newTask = Task(
                    title: titleController.text,
                    description: descriptionController.text,
                    status: TaskStatus.values.firstWhere(
                          (status) => status.name.toLowerCase() == title.toLowerCase().replaceAll(' ', ''),
                      orElse: () => TaskStatus.todo,
                    ),
                  );
                  onTaskAdded(newTask);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _showEditTaskDialog(BuildContext context, Task task) {
    final titleController = TextEditingController(text: task.title);
    final descriptionController = TextEditingController(text: task.description);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  hintText: 'Task Title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  hintText: 'Description (Optional)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty) {
                  final updatedTask = task.copyWith(
                    title: titleController.text,
                    description: descriptionController.text,
                  );
                  onTaskEdited(updatedTask);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}