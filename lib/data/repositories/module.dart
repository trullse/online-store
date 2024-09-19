import 'package:online_store/data/data_sources/module.dart';
import 'package:online_store/domain/data_interfaces/i_good_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'good_repository.dart';

final goodRepositoryProvider = Provider<IGoodRepository>((ref) {
  return GoodRepository(ref.read(goodDataSourceProvider));
});
