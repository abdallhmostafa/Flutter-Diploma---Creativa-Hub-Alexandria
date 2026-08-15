import 'package:flutter/material.dart';

final listOfCategoryName = <String>[
  "All",
  "Deals",
  "News",
  "Bags",
  "Pants",
  "Clothes",
  "Chips",
  "Offers",
];

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: listOfCategoryName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ChoiseChipCategory(chipName: listOfCategoryName[i]);
        },
      ),
    );
  }
}

class ChoiseChipCategory extends StatelessWidget {
  const ChoiseChipCategory({super.key, required this.chipName});
  final String chipName;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: false,
      onSelected: (value) {},
      showCheckmark: false,
      selectedColor: Colors.black,

      label: Text(chipName),
      backgroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
        side: BorderSide(color: Colors.black, width: 1.5),
      ),
    );
  }
}
