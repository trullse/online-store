import 'package:flutter/material.dart' hide ImageProvider;
import 'package:online_store/domain/entities/good.dart';
import 'package:online_store/presentation/features/main/widgets/map.dart';

class DetailsPageBody extends StatefulWidget {
  final Good good;

  const DetailsPageBody({super.key, required this.good});

  @override
  State<DetailsPageBody> createState() => _DetailsPageBodyState();
}

class _DetailsPageBodyState extends State<DetailsPageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        _DetailsImage(image: widget.good.image),
        _DetailsCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.good.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                '\$${widget.good.price.toString()}',
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
                widget.good.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: _DetailsCard(
            child: MapWidget(storeLocation: widget.good.storeLocation),
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
