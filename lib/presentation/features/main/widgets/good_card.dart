import 'package:flutter/material.dart';

class GoodCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final VoidCallback? onPress;

  const GoodCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(
                image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
