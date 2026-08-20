import 'dart:async';

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
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: 'Undo',
                          backgroundColor: Colors.red,
                          onPressed: () {
                            ScaffoldMessenger.of(context).clearSnackBars();
                          },
                        ),
                        persist: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                        margin: const EdgeInsets.only(bottom: 300),
                        dismissDirection: DismissDirection.horizontal,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        content: const Text(
                          'This is a test!!',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Show snack bar',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearMaterialBanners();
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        backgroundColor: Colors.red,
                        margin: const EdgeInsets.all(20),
                        leading: const Icon(Icons.import_contacts),
                        content: const Text('This is a material'),
                        actions: [
                          IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(
                                context,
                              ).clearMaterialBanners();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text(
                    'Show Material banner',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: const Text('TEst'),

                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Exit'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text(
                    'show Dialog',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    unawaited(showModalBottomSheet(
                      context: context,
                      useSafeArea: true,
                      isDismissible: false,
                      showDragHandle: true,
                      builder: (context) => Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.green,
                        child: const Text('data'),
                      ),
                    ));
                  },
                  child: const Text(
                    'show Model bottom Sheet',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TestPage2()),
                );
              },
              child: const Text('Go TO page 2'),
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
                padding: const EdgeInsets.all(30),
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: 'Undo',
                          backgroundColor: Colors.red,
                          onPressed: () {
                            ScaffoldMessenger.of(context).clearSnackBars();
                          },
                        ),
                        persist: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                        margin: const EdgeInsets.only(bottom: 300),
                        dismissDirection: DismissDirection.horizontal,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        content: const Text(
                          'This is a test!!',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'PAge 2',
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
