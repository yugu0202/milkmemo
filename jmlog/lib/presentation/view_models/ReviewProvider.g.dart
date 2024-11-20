// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReviewProvider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getReviewsHash() => r'8581b582f51329f3c50f93d567bc117d647afaec';

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

/// See also [getReviews].
@ProviderFor(getReviews)
const getReviewsProvider = GetReviewsFamily();

/// See also [getReviews].
class GetReviewsFamily extends Family<AsyncValue<List<Review>>> {
  /// See also [getReviews].
  const GetReviewsFamily();

  /// See also [getReviews].
  GetReviewsProvider call(
    String id,
  ) {
    return GetReviewsProvider(
      id,
    );
  }

  @override
  GetReviewsProvider getProviderOverride(
    covariant GetReviewsProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getReviewsProvider';
}

/// See also [getReviews].
class GetReviewsProvider extends AutoDisposeFutureProvider<List<Review>> {
  /// See also [getReviews].
  GetReviewsProvider(
    String id,
  ) : this._internal(
          (ref) => getReviews(
            ref as GetReviewsRef,
            id,
          ),
          from: getReviewsProvider,
          name: r'getReviewsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getReviewsHash,
          dependencies: GetReviewsFamily._dependencies,
          allTransitiveDependencies:
              GetReviewsFamily._allTransitiveDependencies,
          id: id,
        );

  GetReviewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Review>> Function(GetReviewsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetReviewsProvider._internal(
        (ref) => create(ref as GetReviewsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Review>> createElement() {
    return _GetReviewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetReviewsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetReviewsRef on AutoDisposeFutureProviderRef<List<Review>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetReviewsProviderElement
    extends AutoDisposeFutureProviderElement<List<Review>> with GetReviewsRef {
  _GetReviewsProviderElement(super.provider);

  @override
  String get id => (origin as GetReviewsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
