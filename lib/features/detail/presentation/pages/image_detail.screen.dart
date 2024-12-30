import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ImageDetailScreen extends StatelessWidget {
  final bool isImageDetail = true;
  const ImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 90,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: isImageDetail
          ? Center(
              child: Image.asset(
                'assets/image/food/Chicken.png',
                width: double.infinity,
                height: 330,
                fit: BoxFit.cover,
              ),
            )
          : const Center(
              child: Text('video detail'),
            ),
    );
  }
}
