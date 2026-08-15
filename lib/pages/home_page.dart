import 'package:flutter/material.dart';
import 'package:lessons_app/components/home_banner_section.dart';
import 'package:lessons_app/components/home_category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: HomeDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Verve",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),

        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        actions: [
          Icon(Icons.search, size: 30),
          SizedBox(width: 10),
          Icon(Icons.shopping_bag_rounded, size: 30),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: ListView(
          children: [
            HomeCategorySection(),
            SizedBox(height: 20),
            HomeBannerSection(),
          ],
        ),
      ),
    );
  }

  void test() {}
}

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
