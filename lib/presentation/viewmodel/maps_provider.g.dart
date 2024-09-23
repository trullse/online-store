// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapsNotifierHash() => r'4fea3344327b65268a65d4c2f11650ccf261a502';

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

abstract class _$MapsNotifier extends BuildlessAutoDisposeNotifier<void> {
  late final IMapsRepository mapsRepository;

  void build(
    IMapsRepository mapsRepository,
  );
}

/// See also [MapsNotifier].
@ProviderFor(MapsNotifier)
const mapsNotifierProvider = MapsNotifierFamily();

/// See also [MapsNotifier].
class MapsNotifierFamily extends Family<void> {
  /// See also [MapsNotifier].
  const MapsNotifierFamily();

  /// See also [MapsNotifier].
  MapsNotifierProvider call(
    IMapsRepository mapsRepository,
  ) {
    return MapsNotifierProvider(
      mapsRepository,
    );
  }

  @override
  MapsNotifierProvider getProviderOverride(
    covariant MapsNotifierProvider provider,
  ) {
    return call(
      provider.mapsRepository,
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
  String? get name => r'mapsNotifierProvider';
}

/// See also [MapsNotifier].
class MapsNotifierProvider
    extends AutoDisposeNotifierProviderImpl<MapsNotifier, void> {
  /// See also [MapsNotifier].
  MapsNotifierProvider(
    IMapsRepository mapsRepository,
  ) : this._internal(
          () => MapsNotifier()..mapsRepository = mapsRepository,
          from: mapsNotifierProvider,
          name: r'mapsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mapsNotifierHash,
          dependencies: MapsNotifierFamily._dependencies,
          allTransitiveDependencies:
              MapsNotifierFamily._allTransitiveDependencies,
          mapsRepository: mapsRepository,
        );

  MapsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mapsRepository,
  }) : super.internal();

  final IMapsRepository mapsRepository;

  @override
  void runNotifierBuild(
    covariant MapsNotifier notifier,
  ) {
    return notifier.build(
      mapsRepository,
    );
  }

  @override
  Override overrideWith(MapsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MapsNotifierProvider._internal(
        () => create()..mapsRepository = mapsRepository,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mapsRepository: mapsRepository,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MapsNotifier, void> createElement() {
    return _MapsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MapsNotifierProvider &&
        other.mapsRepository == mapsRepository;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mapsRepository.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MapsNotifierRef on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `mapsRepository` of this provider.
  IMapsRepository get mapsRepository;
}

class _MapsNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<MapsNotifier, void>
    with MapsNotifierRef {
  _MapsNotifierProviderElement(super.provider);

  @override
  IMapsRepository get mapsRepository =>
      (origin as MapsNotifierProvider).mapsRepository;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
