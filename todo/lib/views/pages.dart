import 'package:flutter/material.dart';
import 'package:todo/views/tasks_page.dart';

import 'create_todo_view.dart';
import 'login_page.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              size: 26,
            )),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TasksPage(),
                ));
              },
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CreateTodoView(),
                ));
              },
              icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LogIn(),
                ));
              },
              icon: const Icon(Icons.login)),
        ],
      ),
    );
  }
}
