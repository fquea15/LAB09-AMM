import 'package:flutter/material.dart';
import 'package:laboratorio02/app/model/task.dart';
import 'package:laboratorio02/app/view/components/h1.dart';
import 'package:laboratorio02/app/view/components/shape.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final taskList = <Task>[Task('Tarea1'), Task('Tarea2'), Task('Tarea3')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Center(child: Text('Atrás')),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                Row(children: [Shape()]),
                Column(
                  children: [
                    Image.asset('assets/images/tasks-list-image.png',
                        width: 120, height: 120),
                    const SizedBox(height: 16),
                    const H1('Completa tus tareas', color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 35),
            child: H1('Tareas'),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ListView.separated(
                    itemCount: taskList.length,
                    itemBuilder: (_, index) => _TaskItem(
                      taskList[index],
                      onTap: () {
                        taskList[index].done = !taskList[index].done;
                        setState(() {
                          
                        });
                      },
                    ),
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                  )))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 50),
      ),
    );
  }
}

class _TaskItem extends StatelessWidget {
  const _TaskItem(this.task, {super.key, this.onTap});
  final Task task;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 18),
            child: Row(
              children: [
                Icon(
                  task.done
                  ? Icons.check_box_rounded
                  : Icons.check_box_outline_blank,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Text(task.title)
              ],
            ),
          ),
        ));
  }
}
