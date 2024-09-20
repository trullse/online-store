import 'package:flutter/material.dart';
import 'package:online_store/presentation/features/main/widgets/details_page_body.dart';
import 'package:online_store/domain/entities/good.dart';

class DetailsPage extends StatelessWidget {
  final Good good;

  const DetailsPage({super.key, required this.good});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Details'),
      ),
      body: DetailsPageBody(good: good),
    );
  }
}
