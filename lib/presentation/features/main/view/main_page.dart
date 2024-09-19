import 'package:flutter/material.dart';
import 'package:online_store/presentation/features/main/widgets/goods_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text('Store'),
        ),
      ),
      body: const GoodsList(),
    );
  }
}
