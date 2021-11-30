import 'package:flutter/material.dart';
import 'package:todo/views/pages.dart';

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(22, 106, 237, 1),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Pages(),
          ));
        },
        child: const Icon(Icons.home, size: 28),
      ),
    );
  }
}
