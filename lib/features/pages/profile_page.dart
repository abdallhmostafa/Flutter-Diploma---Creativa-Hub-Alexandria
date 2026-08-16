import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfileLeading(),
          SizedBox(height: 10),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("abdallhelrabiey255@gamil.com"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.mobile_screen_share_outlined),
            title: Text("Mobile"),
            subtitle: Text("01006257074"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.facebook),
            title: Text("Facebook"),
            subtitle: Text("abdallhelrabiey255@gamil"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.beach_access),
            title: Text("Behance"),
            subtitle: Text("xyz.com"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("abdallhelrabiey255@gamil.com"),
          ),
        ],
      ),
    );
  }
}

class ProfileLeading extends StatelessWidget {
  const ProfileLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blueAccent, Colors.deepOrangeAccent],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        spacing: 20,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, size: 25, color: Colors.white),
              ),
              Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Icon(Icons.settings, size: 25, color: Colors.white),
            ],
          ),

          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            child: CircleAvatar(
              radius: 48,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1496715976403-7e36dc43f17b?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Abdallh Mostafa",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Senior Flutter Developer",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1000", style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(width: 5),
              Text(
                "Follower",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 40,
                child: VerticalDivider(color: Colors.white, thickness: 1.5),
              ),

              SizedBox(width: 10),

              Text("1200", style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(width: 5),
              Text(
                "Following",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
