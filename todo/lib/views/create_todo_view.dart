import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Todo")),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(33, 66, 33, 0),
            child: TextField(
              decoration: InputDecoration(hintText: "Enter new task"),
            ),
          ),
        ],
      ),
    );
  }
}
