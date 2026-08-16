class ProductModel {
  final String title;
  final double price;
  final String image;
  final String subTitle;
  final double discount;
  final bool isNew;
  final bool isExcl;

  ProductModel({
    required this.title,
    required this.price,
    required this.image,
    required this.subTitle,
    required this.discount,
    required this.isNew,
    required this.isExcl,
  });
}
