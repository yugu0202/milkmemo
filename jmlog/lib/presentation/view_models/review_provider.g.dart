// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reviewHash() => r'15eac1474a50edfd030c9e864cdf2bcb96311920';

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

/// See also [review].
@ProviderFor(review)
const reviewProvider = ReviewFamily();

/// See also [review].
class ReviewFamily extends Family<AsyncValue<List<Review>>> {
  /// See also [review].
  const ReviewFamily();

  /// See also [review].
  ReviewProvider call(
    String id,
  ) {
    return ReviewProvider(
      id,
    );
  }

  @override
  ReviewProvider getProviderOverride(
    covariant ReviewProvider provider,
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
  String? get name => r'reviewProvider';
}

/// See also [review].
class ReviewProvider extends AutoDisposeFutureProvider<List<Review>> {
  /// See also [review].
  ReviewProvider(
    String id,
  ) : this._internal(
          (ref) => review(
            ref as ReviewRef,
            id,
          ),
          from: reviewProvider,
          name: r'reviewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reviewHash,
          dependencies: ReviewFamily._dependencies,
          allTransitiveDependencies: ReviewFamily._allTransitiveDependencies,
          id: id,
        );

  ReviewProvider._internal(
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
    FutureOr<List<Review>> Function(ReviewRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReviewProvider._internal(
        (ref) => create(ref as ReviewRef),
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
    return _ReviewProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewProvider && other.id == id;
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
mixin ReviewRef on AutoDisposeFutureProviderRef<List<Review>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ReviewProviderElement
    extends AutoDisposeFutureProviderElement<List<Review>> with ReviewRef {
  _ReviewProviderElement(super.provider);

  @override
  String get id => (origin as ReviewProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
