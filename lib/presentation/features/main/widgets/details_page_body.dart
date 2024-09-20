import 'package:flutter/material.dart';
import 'package:online_store/domain/entities/good.dart';

class DetailsPageBody extends StatelessWidget {
  final Good good;

  const DetailsPageBody({super.key, required this.good});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        _DetailsImage(image: good.image),
        _DetailsCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                good.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                '\$${good.price.toString()}',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
        _DetailsCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                good.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailsImage extends StatelessWidget {
  final String image;
  const _DetailsImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.network(image),
        ),
      ),
    );
  }
}

class _DetailsCard extends StatelessWidget {
  final Widget child;
  const _DetailsCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
