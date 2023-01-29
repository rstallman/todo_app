import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {

              },
              style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
