import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed('recipe-detail');
      },
    );
  }
}
