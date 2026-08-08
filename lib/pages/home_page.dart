import 'package:flutter/material.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  ChoiceChip(
                    selected: true,
                    onSelected: (value) {},
                    showCheckmark: false,
                    selectedColor: Colors.black,

                    label: Text("All"),

                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    labelStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  ChoiceChip(
                    selected: false,
                    onSelected: (value) {},
                    showCheckmark: false,
                    selectedColor: Colors.black,

                    label: Text("Deal"),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      side: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hot Drops",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Must have Sneakers",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 12),
                        ActionChip(
                          label: Text("Find out"),
                          onPressed: () {},
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          labelStyle: TextStyle(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Image.asset("assets/images/shoe img.png")),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/home_card.png"),
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: () {}, child: Text("Pay")),
            TextButton.icon(
              onPressed: () {},
              label: Text("Do not Have an account"),
              icon: Icon(Icons.abc_outlined),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),

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
