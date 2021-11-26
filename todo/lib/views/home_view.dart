import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
          backgroundColor: Colors.blue,
          title: const Text(
            'TO DO',
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return const ListTile(
                leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage("assets/images/space.webp"),
                ),
                title: Text("Marvin Lartey"),
                subtitle: Text('hello Marvin '),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.red.shade200,
                ),
              );
            },
            separatorBuilder: (context, index) {
              /* return const Divider(
                thickness: 0,
                color: Colors.blue,
                indent: 33,
              ); */
              return const SizedBox(
                height: 15,
              );
            },
            itemCount: 33)

        /* ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage("assets/images/space.webp"),
              ),
              title: Text("Marvin Lartey"),
              subtitle: Text('hello Marvin '),
              trailing: Icon(Icons.favorite),
            ),
          ],
        ) */

        /* Row(1          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage("assets/images/itachi.jpg"),
            ),
            Text('hello'),
            Icon(Icons.search_sharp)
          ],
        ) */

        /* const Center(
          child: IconButton(
            icon: Icon(Icons.notifications),
            onPressed: null,
            iconSize: 26,
          ),
        ) */

        /* SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Container(
          color: Colors.red,
          child: const Icon(
            Icons.favorite,
            color: Colors.blue,
            size: 26,
          ),
        ),
      ), */

        );
  }
}
