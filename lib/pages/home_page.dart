import 'package:flutter/material.dart';
import 'package:flutter_app/components/product_card.dart';
import 'package:flutter_app/models/category.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/widgets/widget_home_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Product model = Product(
        productName: "Britamnia Choco Chill Cake",
        category: Category(
            categoryName: "Bakery & Biscuits",
            categoryImage: "/uploads/categories/1715967898886-bakery.png",
            categoryId: "6647979a6fed2f3600a25fb8"),
        productShortDescription:
            "Britannia Chocolate Cake has soft and delicious cake slices with the goodness of chocolate, milk and eggs.",
        productPrice: 30,
        productSalePrice: 26,
        productImage: "/uploads/products/1716001953202-choco.jpg",
        productSKU: "GA-0001",
        productType: "simple",
        stockStatus: "IN",
        productId: "66481ca1e446a9877b5f6b98");

    return Scaffold(
      body: ListView(
        children: [
          const HomeCategoriesWidget(),
          ProductCard(
            model: model,
          )
        ],
      ),
    );
  }
}
