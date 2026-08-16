import 'package:flutter/material.dart';
import 'package:lessons_app/features/components/home_banner_section.dart';
import 'package:lessons_app/features/components/home_category_section.dart';
import 'package:lessons_app/features/components/home_drawer.dart';
import 'package:lessons_app/features/components/home_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
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
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Seller",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text("See all")),
              ],
            ),
            SizedBox(
              height: 400,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 15),
                itemBuilder: (context, i) =>
                    Product(productModel: listOfProducts[i]),
                itemCount: listOfProducts.length,
                scrollDirection: Axis.horizontal,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jackets",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text("See all")),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,

              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 400,
              ),
              itemCount: listOfProducts.length,
              itemBuilder: (context, index) =>
                  Product(productModel: listOfProducts[index]),
            ),
          ],
        ),
      ),
    );
  }
}
