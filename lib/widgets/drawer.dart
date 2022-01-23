import 'package:first_flutter_ui_one/utils/routes.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://images.unsplash.com/photo-1573322420067-20b6228d9158?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.red),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                margin: EdgeInsets.zero,
                accountName: Text("Siddhartha Upreti"),
                accountEmail: Text("sid876upreti@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const ListTile(
              // onTap:() => Navigator.pushNamed(context, MyRoutes.homeRoute),
              leading: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              title: Text(
                "Chat window",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
