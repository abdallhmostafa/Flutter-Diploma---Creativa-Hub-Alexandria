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
            splashColor: Colors.deepPurpleAccent,
            leading: const Icon(Icons.person),
            title: const Text("Profile Page"),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            splashColor: Colors.deepPurpleAccent,
            leading: const Icon(Icons.settings),
            title: const Text("Setting Page"),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
