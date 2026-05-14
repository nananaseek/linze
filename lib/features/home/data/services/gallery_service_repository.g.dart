// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_service_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(galleryService)
final galleryServiceProvider = GalleryServiceProvider._();

final class GalleryServiceProvider
    extends
        $FunctionalProvider<
          GalleryServiceImp,
          GalleryServiceImp,
          GalleryServiceImp
        >
    with $Provider<GalleryServiceImp> {
  GalleryServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'galleryServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$galleryServiceHash();

  @$internal
  @override
  $ProviderElement<GalleryServiceImp> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GalleryServiceImp create(Ref ref) {
    return galleryService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GalleryServiceImp value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GalleryServiceImp>(value),
    );
  }
}

String _$galleryServiceHash() => r'81ee36a116f74ea9e4cc767bb33c68baed2b4a00';
