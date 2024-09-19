import 'package:online_store/data/data_sources/good_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final goodDataSourceProvider = Provider<GoodDataSource>((ref) {
  return GoodDataSource();
});
