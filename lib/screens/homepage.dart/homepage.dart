import 'package:documentation_app/src/homepage_controlar.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  homepage({super.key});
  final controllar = homepagecontrollar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(190, 237, 7, 199),
        title: const Text(
          "TASK MANAGER",
          style: TextStyle(
            color: Color.fromARGB(255, 241, 240, 240),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: Text(
                    "Add task",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  content: Column(mainAxisSize: MainAxisSize.min, children: [
                    TextField(
                      decoration: InputDecoration(
                          label: Text("Name"), hintText: "enter "),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text("details"), hintText: "enter"),
                    ),
                  ]),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("Add"))
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
          color: const Color.fromARGB(255, 247, 247, 248),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: controllar.tasklist.length,
          itemBuilder: (build, name) {
            return ExpansionTile(
              title: Text(
                controllar.tasklist[name].taskname,
                style: TextStyle(
                    color: const Color.fromARGB(255, 239, 9, 9),
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.list),
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(controllar.tasklist[name].taskdetail),
                      height: 100,
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
