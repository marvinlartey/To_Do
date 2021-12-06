import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo/views/create_todo_view.dart';

import 'custom_widget/widgets.dart';

void main() {
  runApp(const TasksPage());
}

final items = List<String>.generate(20, (i) => "Item ${i + 1}");

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //DRAWER
      drawer: Drawer(
        child: Container(
          color: const Color.fromRGBO(14, 31, 85, 1),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.fromLTRB(0, 50, 20, 0),
                child: SizedBox(
                    height: 70,
                    width: 70,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Card(
                          color: Color.fromRGBO(14, 31, 85, 1),
                          shape: CircleBorder(
                              side: BorderSide(width: 1, color: Colors.white)),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 26,
                            color: Colors.white,
                          )),
                    )),
              ),
              SizedBox(
                child: CircularPercentIndicator(
                  radius: 130,
                  progressColor: Colors.pink,
                  lineWidth: 2,
                  percent: 0.3,
                  center: const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/itachi.jpg'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 33),
                child: Text('Marvin \nLartey',
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(80, 40, 0, 0),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 0,
                    ),
                    RowWithIconAndText(
                      icon: Icons.bookmark_border_outlined,
                      text: 'Template',
                    ),
                    RowWithIconAndText(
                      icon: Icons.dashboard_customize_outlined,
                      text: 'Categories',
                    ),
                    RowWithIconAndText(
                      icon: Icons.pie_chart_outline,
                      text: 'Analytics',
                    ),
                    RowWithIconAndText(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      //APPBAR
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromRGBO(171, 158, 158, 1)),
        backgroundColor: Colors.white,
        /* leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              size: 26,
            )), */
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      //BODY
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //WELCOME MESSAGE
            const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                "What's up, Marvin!",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(34, 45, 87, 1)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(33, 43, 0, 9),
              child: Text('CATEGORIES',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(34, 45, 87, 1))),
            ),
            //TASKS CARDS
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.width * 0.3),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //CARD 1
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const PaddingWithText(
                                padding: EdgeInsets.all(10),
                                fontSize: 11,
                                text: '40 tasks',
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(164, 169, 199, 1),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Business',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 3.0,
                                  percent: 0.5,
                                  progressColor: Colors.pink.shade300,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // CARD 2
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('18 tasks',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(164, 169, 199, 1))),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Personal',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 3.0,
                                  percent: 0.7,
                                  progressColor: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD 3
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('18 tasks',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(164, 169, 199, 1))),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Family',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 3.0,
                                  percent: 0.7,
                                  progressColor: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //CARD 4
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('18 tasks',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(164, 169, 199, 1))),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Work',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 3.0,
                                  percent: 0.7,
                                  progressColor: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //SUBTITLE
            const Padding(
              padding: EdgeInsets.fromLTRB(33, 43, 0, 9),
              child: Text('TODAY\'S TASKS ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(34, 45, 87, 1))),
            ),

            //LIST OF TASKS
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Dismissible(
                      key: Key(item),
                      child: Card(
                          child: Row(
                        children: const [
                          Radio(
                              value: '',
                              groupValue: '',
                              onChanged: null,
                              activeColor: Colors.pink),
                          Text('Daily meeting with team')
                        ],
                      )),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: 6),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(22, 106, 237, 1),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CreateTodoView(),
          ));
        },
        child: const Icon(Icons.add, size: 28),
      ),
    );
  }
}

class RowWithIconAndText extends StatelessWidget {
  final IconData? icon;
  final String text;
  const RowWithIconAndText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
        const SizedBox(
          width: 25,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 44,
        )
      ],
    );
  }
}
