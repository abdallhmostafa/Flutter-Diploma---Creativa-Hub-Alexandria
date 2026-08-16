
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(height: 200, color: Colors.deepPurpleAccent),

          ListTile(
            onTap: () {
              Navigator.maybePop(context);
              Navigator.pushNamed(context, "/profile");
            },
            splashColor: Colors.green,
            leading: Icon(Icons.person),
            title: Text("Profile Page"),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            splashColor: Colors.green,
            leading: Icon(Icons.settings),
            title: Text("Setting Page"),
            trailing: Icon(Icons.arrow_forward_rounded),
          ),
          Divider(),
        ],
      ),
    );
  }
}
