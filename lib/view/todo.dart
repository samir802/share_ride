import 'package:flutter/material.dart';

class TODO extends StatelessWidget {
  const TODO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              ToDoList(title: "Hello", status: "world"),
              ToDoList(title: "title", status: "status"),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                45.0,
              )),
            ),
            context: context,
            builder: (context) => SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 70,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 232, 232, 232),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: ('Title'),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: ('Status'),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ToDoList extends StatelessWidget {
  const ToDoList({
    super.key,
    required this.title,
    required this.status,
  });
  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 203, 200, 200),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 15, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title: $title",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Status: $status",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
