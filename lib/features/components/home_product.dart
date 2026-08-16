import 'package:flutter/material.dart';
import 'package:lessons_app/features/models/product_model.dart';

final List<ProductModel> listOfProducts = [
  ProductModel(
    title: "Pants",
    price: 300,
    image:
        "https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?q=80&w=697&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW",
    discount: 10,
    isExcl: true,
    isNew: false,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),

  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
  ProductModel(
    title: "Glasses",
    price: 200,
    image:
        "https://plus.unsplash.com/premium_photo-1692340973681-e96b10bda346?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    subTitle: "This a NEW 2",
    discount: 12,
    isNew: true,
    isExcl: true,
  ),
];

class Product extends StatelessWidget {
  const Product({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 235,

            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,

                image: NetworkImage(productModel.image),
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      child: Text(
                        "-${productModel.discount}%",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    if (productModel.isNew == true)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        child: Text(
                          "New",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    if (productModel.isExcl == true)
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          child: Text(
                            "Exclusive",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Text(
          " The Blue Banter Co.",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Text(
          productModel.title,

          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "\$${productModel.price}",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
