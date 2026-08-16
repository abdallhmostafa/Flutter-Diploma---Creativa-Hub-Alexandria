import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: "Undo",
                          backgroundColor: Colors.red,
                          onPressed: () {
                            ScaffoldMessenger.of(context).clearSnackBars();
                          },
                        ),
                        persist: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                        margin: EdgeInsets.only(bottom: 300),
                        dismissDirection: DismissDirection.horizontal,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        content: Text(
                          "This is a test!!",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Show snack bar",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearMaterialBanners();
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        backgroundColor: Colors.red,
                        margin: EdgeInsets.all(20),
                        leading: Icon(Icons.import_contacts),
                        content: Text('This is a material'),
                        actions: [
                          IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(
                                context,
                              ).clearMaterialBanners();
                            },
                            icon: Icon(Icons.close),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "Show Material banner",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text("TEst"),

                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Exit"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "show Dialog",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      useSafeArea: true,
                      isDismissible: false,
                      showDragHandle: true,
                      builder: (context) => Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.green,
                        child: Text("data"),
                      ),
                    );
                  },
                  child: Text(
                    "show Model bottom Sheet",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestPage2()),
                );
              },
              child: Text("Go TO page 2"),
            ),
          ],
        ),
      ),
    );
  }
}

class TestPage2 extends StatelessWidget {
  const TestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: "Undo",
                          backgroundColor: Colors.red,
                          onPressed: () {
                            ScaffoldMessenger.of(context).clearSnackBars();
                          },
                        ),
                        persist: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                        margin: EdgeInsets.only(bottom: 300),
                        dismissDirection: DismissDirection.horizontal,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        content: Text(
                          "This is a test!!",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "PAge 2",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
