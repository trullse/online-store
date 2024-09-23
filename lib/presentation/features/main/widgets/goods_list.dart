import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:online_store/presentation/features/main/widgets/good_card.dart';
import 'package:online_store/presentation/viewmodel/goods_provider.dart';
import 'package:online_store/presentation/di/injector.dart';

class GoodsList extends ConsumerWidget {
  const GoodsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goods = ref.watch(asyncGoodsNotifierProvider(i.get()));
    return switch (goods) {
      AsyncData(:final value) => GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            mainAxisExtent: 300,
          ),
          itemCount: value.length,
          itemBuilder: (context, index) {
            return GoodCard(
              image: value[index].image,
              title: value[index].title,
              price: value[index].price,
              onTap: () => context.go(
                '/details',
                extra: value[index],
              ),
            );
          },
        ),
      AsyncError(:final error) => Text('Error: $error'),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
