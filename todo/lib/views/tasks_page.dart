import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const TasksPage());
}

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
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
      //BODY
      body: Column(
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
          Row(
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
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('40 tasks',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(164, 169, 199, 1))),
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
                                    color: Color.fromRGBO(164, 169, 199, 1))),
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
              )
            ],
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

          //ListView
        ],
      ),
    );
  }
}
