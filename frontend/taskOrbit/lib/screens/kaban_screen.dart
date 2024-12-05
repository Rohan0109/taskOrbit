// lib/screens/kanban_board_screen.dart
import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widget/kaban_column.dart';

class KanbanBoardScreen extends StatefulWidget {
  const KanbanBoardScreen({Key? key}) : super(key: key);

  @override
  _KanbanBoardScreenState createState() => _KanbanBoardScreenState();
}

class _KanbanBoardScreenState extends State<KanbanBoardScreen> {
  List<Task> _tasks = [];

  List<Task> get _todoTasks =>
      _tasks.where((task) => task.status == TaskStatus.todo).toList();

  List<Task> get _inProgressTasks =>
      _tasks.where((task) => task.status == TaskStatus.inProgress).toList();

  List<Task> get _doneTasks =>
      _tasks.where((task) => task.status == TaskStatus.done).toList();

  void _addTask(Task task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _updateTaskStatus(Task task, TaskStatus newStatus) {
    setState(() {
      final index = _tasks.indexWhere((t) => t.id == task.id);
      if (index != -1) {
        _tasks[index] = task.copyWith(status: newStatus);
      }
    });
  }

  void _deleteTask(Task task) {
    setState(() {
      _tasks.removeWhere((t) => t.id == task.id);
    });
  }

  void _editTask(Task updatedTask) {
    setState(() {
      final index = _tasks.indexWhere((t) => t.id == updatedTask.id);
      if (index != -1) {
        _tasks[index] = updatedTask;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Kanban Board'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: KanbanColumn(
              title: 'Todo',
              tasks: _todoTasks,
              color: Colors.blue,
              onTaskAdded: _addTask,
              onTaskStatusChanged: _updateTaskStatus,
              onTaskDeleted: _deleteTask,
              onTaskEdited: _editTask,
            ),
          ),
          Expanded(
            child: KanbanColumn(
              title: 'In Progress',
              tasks: _inProgressTasks,
              color: Colors.orange,
              onTaskAdded: _addTask,
              onTaskStatusChanged: _updateTaskStatus,
              onTaskDeleted: _deleteTask,
              onTaskEdited: _editTask,
            ),
          ),
          Expanded(
            child: KanbanColumn(
              title: 'Done',
              tasks: _doneTasks,
              color: Colors.green,
              onTaskAdded: _addTask,
              onTaskStatusChanged: _updateTaskStatus,
              onTaskDeleted: _deleteTask,
              onTaskEdited: _editTask,
            ),
          ),
        ],
      ),
    );
  }
}
