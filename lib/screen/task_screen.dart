import 'package:flutter/material.dart';
import 'package:my_day/modules/task_data.dart';
import 'package:my_day/screen/add_task_screen.dart';
import 'package:my_day/screen/bottomNavigationBar.dart';
import 'package:my_day/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: link,
        centerTitle: true,
        title: const Text('Add Task'),
      ),
      backgroundColor: link,
      body: Column(
        // I'm using a nested column here
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, bottom: 30.0, right: 30.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 60,
                    weight: 15,
                    color: link,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'My Day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // Wrapping my container with the expanded widget makes it expanded all the way down without having to hot code my height.
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  // The border radius helps us to define the way our container would look like
                  topLeft: Radius.circular(20.0),
                  // This gives a nice curvy edge
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: link,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                // The above line help to position the bottomsheet above the Keyboard
                child: const AddTaskScreen(),
                // {
                //   // setState(() {
                //   //   Provider.of<TaskData>(context)
                //   //       .tasks
                //   //       .add(Task(name: newTaskTitle));
                //   // });
                //   Navigator.pop(context);
                //This Navigator makes the container pop off the moment the add button is pressed
              ),
            ),
            // the builder in this context requires a function, this is another way to define a function
          );
        },
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
      bottomNavigationBar: const BottomScreen(),
    );
  }
}
