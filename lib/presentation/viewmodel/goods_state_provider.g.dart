// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncGoodsNotifierHash() =>
    r'cfc3c8135f935803337f572fa809bd848dccfb6f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AsyncGoodsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Good>> {
  late final IGoodRepository goodRepository;

  FutureOr<List<Good>> build(
    IGoodRepository goodRepository,
  );
}

/// See also [AsyncGoodsNotifier].
@ProviderFor(AsyncGoodsNotifier)
const asyncGoodsNotifierProvider = AsyncGoodsNotifierFamily();

/// See also [AsyncGoodsNotifier].
class AsyncGoodsNotifierFamily extends Family<AsyncValue<List<Good>>> {
  /// See also [AsyncGoodsNotifier].
  const AsyncGoodsNotifierFamily();

  /// See also [AsyncGoodsNotifier].
  AsyncGoodsNotifierProvider call(
    IGoodRepository goodRepository,
  ) {
    return AsyncGoodsNotifierProvider(
      goodRepository,
    );
  }

  @override
  AsyncGoodsNotifierProvider getProviderOverride(
    covariant AsyncGoodsNotifierProvider provider,
  ) {
    return call(
      provider.goodRepository,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncGoodsNotifierProvider';
}

/// See also [AsyncGoodsNotifier].
class AsyncGoodsNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AsyncGoodsNotifier, List<Good>> {
  /// See also [AsyncGoodsNotifier].
  AsyncGoodsNotifierProvider(
    IGoodRepository goodRepository,
  ) : this._internal(
          () => AsyncGoodsNotifier()..goodRepository = goodRepository,
          from: asyncGoodsNotifierProvider,
          name: r'asyncGoodsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncGoodsNotifierHash,
          dependencies: AsyncGoodsNotifierFamily._dependencies,
          allTransitiveDependencies:
              AsyncGoodsNotifierFamily._allTransitiveDependencies,
          goodRepository: goodRepository,
        );

  AsyncGoodsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.goodRepository,
  }) : super.internal();

  final IGoodRepository goodRepository;

  @override
  FutureOr<List<Good>> runNotifierBuild(
    covariant AsyncGoodsNotifier notifier,
  ) {
    return notifier.build(
      goodRepository,
    );
  }

  @override
  Override overrideWith(AsyncGoodsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncGoodsNotifierProvider._internal(
        () => create()..goodRepository = goodRepository,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        goodRepository: goodRepository,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncGoodsNotifier, List<Good>>
      createElement() {
    return _AsyncGoodsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncGoodsNotifierProvider &&
        other.goodRepository == goodRepository;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, goodRepository.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncGoodsNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Good>> {
  /// The parameter `goodRepository` of this provider.
  IGoodRepository get goodRepository;
}

class _AsyncGoodsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncGoodsNotifier,
        List<Good>> with AsyncGoodsNotifierRef {
  _AsyncGoodsNotifierProviderElement(super.provider);

  @override
  IGoodRepository get goodRepository =>
      (origin as AsyncGoodsNotifierProvider).goodRepository;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
