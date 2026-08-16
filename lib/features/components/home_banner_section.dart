import 'package:flutter/material.dart';

class HomeBannerSection extends StatelessWidget {
  const HomeBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
                  color: Colors.black,
                ),
              ),
              Text(
                "Must have Sneakers",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),
              ActionChip(
                label: Text("Find out"),
                onPressed: () {},
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
    );
  }
}
