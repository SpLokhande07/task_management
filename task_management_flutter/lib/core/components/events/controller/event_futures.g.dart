// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_futures.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getEventsWithDataHash() => r'203bfbee60cc586b7f4d75cdb32f1bcba4195686';

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

/// See also [getEventsWithData].
@ProviderFor(getEventsWithData)
const getEventsWithDataProvider = GetEventsWithDataFamily();

/// See also [getEventsWithData].
class GetEventsWithDataFamily extends Family<Object?> {
  /// See also [getEventsWithData].
  const GetEventsWithDataFamily();

  /// See also [getEventsWithData].
  GetEventsWithDataProvider call(
    DateTime date,
  ) {
    return GetEventsWithDataProvider(
      date,
    );
  }

  @override
  GetEventsWithDataProvider getProviderOverride(
    covariant GetEventsWithDataProvider provider,
  ) {
    return call(
      provider.date,
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
  String? get name => r'getEventsWithDataProvider';
}

/// See also [getEventsWithData].
class GetEventsWithDataProvider extends AutoDisposeProvider<Object?> {
  /// See also [getEventsWithData].
  GetEventsWithDataProvider(
    DateTime date,
  ) : this._internal(
          (ref) => getEventsWithData(
            ref as GetEventsWithDataRef,
            date,
          ),
          from: getEventsWithDataProvider,
          name: r'getEventsWithDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getEventsWithDataHash,
          dependencies: GetEventsWithDataFamily._dependencies,
          allTransitiveDependencies:
              GetEventsWithDataFamily._allTransitiveDependencies,
          date: date,
        );

  GetEventsWithDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final DateTime date;

  @override
  Override overrideWith(
    Object? Function(GetEventsWithDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetEventsWithDataProvider._internal(
        (ref) => create(ref as GetEventsWithDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Object?> createElement() {
    return _GetEventsWithDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetEventsWithDataProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetEventsWithDataRef on AutoDisposeProviderRef<Object?> {
  /// The parameter `date` of this provider.
  DateTime get date;
}

class _GetEventsWithDataProviderElement
    extends AutoDisposeProviderElement<Object?> with GetEventsWithDataRef {
  _GetEventsWithDataProviderElement(super.provider);

  @override
  DateTime get date => (origin as GetEventsWithDataProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
