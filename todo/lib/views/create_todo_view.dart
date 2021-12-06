import 'package:flutter/material.dart';
import 'package:todo/views/pages.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 22, top: 44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                      elevation: 0,
                      shape: const CircleBorder(
                          side: BorderSide(color: Colors.grey, width: 1)),
                      // margin: EdgeInsets.all(0),
                      //borderOnForeground: false,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 26,
                          )))
                ],
              ),
            ),

            //TEXTFIELD
            Padding(
              padding: const EdgeInsets.fromLTRB(33, 133, 33, 33),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "Enter new task",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.circular(55))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Row(
                children: [
                  //CALENDER
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          side: BorderSide(color: Colors.grey, width: 0.5)),
                      child: SizedBox(
                        width: 120,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_today_outlined,
                              color: Colors.grey),
                          label: const Text('  Today',
                              style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ),
                  ),

                  //RADIO BUTTON
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          side: BorderSide(color: Colors.grey, width: 0.5)),
                      child: Theme(
                        data: ThemeData(
                          primarySwatch: Colors.blue,
                        ),
                        child: const Radio(
                            toggleable: true,
                            value: null,
                            groupValue: null,
                            onChanged: null,
                            activeColor: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 55, top: 33),
                  child: const IconButton(
                      padding: EdgeInsets.all(22),
                      onPressed: null,
                      icon: Icon(Icons.create_new_folder_outlined)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 11, top: 33),
                  child: const IconButton(
                      padding: EdgeInsets.all(22),
                      onPressed: null,
                      icon: Icon(Icons.flag_outlined)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 11, top: 33),
                  child: const IconButton(
                      padding: EdgeInsets.all(22),
                      onPressed: null,
                      icon: Icon(Icons.dark_mode_outlined)),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 160,
        child: FloatingActionButton(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          child: Row(
            children: const [
              Text('        New Task '),
              Icon(Icons.keyboard_arrow_up_rounded, size: 28),
            ],
          ),
          backgroundColor: const Color.fromRGBO(22, 106, 237, 1),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Pages(),
            ));
          },
        ),
      ),
    );
  }
}
