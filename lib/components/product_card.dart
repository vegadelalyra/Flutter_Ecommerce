import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product? model;
  const ProductCard({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                model!.fullImagePath,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 10),
            child: Text(
              model!.productName,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
