import 'dart:convert';
import 'package:first_flutter_ui_one/api/user_api.dart';
import 'package:first_flutter_ui_one/models/profile_info.dart';
import 'package:first_flutter_ui_one/widgets/drawer.dart';
import 'package:first_flutter_ui_one/widgets/infowindow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFFEF9EB),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Siddharthia Upreti",
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Age: 22",
                                    style: TextStyle(fontSize: 15.0),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20.0),
                            padding: EdgeInsets.all(4),
                            child: Text("Time"),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.grey[300],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Image(
                                      width: 150.0,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Aayush Upreti",
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Age: 22",
                                        style: TextStyle(fontSize: 15.0),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  ListTile(
                    hoverColor: Colors.amber,
                    tileColor: Colors.red,
                    leading: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1509460913899-515f1df34fea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                    ),
                    title: Text("Ayowaska hinanni"),
                    subtitle: Text("Age: 34"),
                    trailing: Icon(Icons.add_alert),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
