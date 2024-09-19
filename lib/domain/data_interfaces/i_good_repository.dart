import '../entities/good.dart';

abstract class IGoodRepository {
  abstract final Future<List<Good>> goods;
}
