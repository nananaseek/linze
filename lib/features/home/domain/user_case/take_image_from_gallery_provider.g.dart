// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_image_from_gallery_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(takeImageFromGalleryUserCase)
final takeImageFromGalleryUserCaseProvider =
    TakeImageFromGalleryUserCaseProvider._();

final class TakeImageFromGalleryUserCaseProvider
    extends
        $FunctionalProvider<
          TakeImageFromGalleryUseCase,
          TakeImageFromGalleryUseCase,
          TakeImageFromGalleryUseCase
        >
    with $Provider<TakeImageFromGalleryUseCase> {
  TakeImageFromGalleryUserCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'takeImageFromGalleryUserCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$takeImageFromGalleryUserCaseHash();

  @$internal
  @override
  $ProviderElement<TakeImageFromGalleryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TakeImageFromGalleryUseCase create(Ref ref) {
    return takeImageFromGalleryUserCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TakeImageFromGalleryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TakeImageFromGalleryUseCase>(value),
    );
  }
}

String _$takeImageFromGalleryUserCaseHash() =>
    r'4c48490171c173dcd886fab68db5167f98ec6195';
