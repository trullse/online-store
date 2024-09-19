import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_store/presentation/features/main/widgets/good_card.dart';
import 'package:online_store/presentation/viewmodel/model.dart';

class GoodsList extends ConsumerWidget {
  const GoodsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goods = ref.watch(goodsListState);
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemCount: goods.length,
      itemBuilder: (context, index) {
        return GoodCard(
          image: goods[index].image,
          title: goods[index].title,
          price: goods[index].price,
        );
      },
    );
  }
}
